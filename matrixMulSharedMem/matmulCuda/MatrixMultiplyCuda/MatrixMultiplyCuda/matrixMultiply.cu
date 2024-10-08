﻿#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <cstdlib>
#include <stdio.h>
#include <string>
#include <iostream>

#ifdef __INTELLISENSE__
#define CUDA_KERNEL(...)
#else
#define CUDA_KERNEL(...) <<< __VA_ARGS__ >>>
#endif

constexpr int rows = 3;
__device__ constexpr int matRows = rows;

__managed__ int matrixA[rows][rows];
__managed__ int matrixB[rows][rows];

// Kernel wrapper class
cudaError_t kernelWrapper();
// Matrix Multiply kernel
// int matA[matRows][matRows], int matB[matRows][matRows],
__global__ void matMul(int outputMat[matRows][matRows]);

// Helper functions to set up and print matrices
void randMatVals(int matrix[rows][rows]);
void printMat(int mat[rows][rows], std::string string);
void clearMat(int matrix[rows][rows]);

int main()
{
    // Add vectors in parallel.
    cudaError_t cudaStatus = kernelWrapper();
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "addWithCuda failed!");
        return 1;
    }

    // Free Cuda
    cudaStatus = cudaDeviceReset();
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaDeviceReset failed!");
        return 1;
    }

    return 0;
}

// Helper function for using CUDA to add vectors in parallel.
cudaError_t kernelWrapper()
{
    dim3 blockDims(rows, rows);
    int dev_outMat[rows][rows];
    int matrix[rows][rows];
    clearMat(matrix);

    // Set up device __managed__ matrices
    randMatVals(matrixA);
    randMatVals(matrixB);

    printMat(matrixA, "__managed__ Matrix A");
    printMat(matrixB, "__managed__ Matrix B");
    printMat(matrix, "Output Matrix");

    cudaError_t cudaStatus;

    // Choose which GPU to run on, change this on a multi-GPU system.
    cudaStatus = cudaSetDevice(0);
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaSetDevice failed!  Do you have a CUDA-capable GPU installed?");
        goto Error;
    }

    // Allocate buffer for output Matrix
    cudaStatus = cudaMalloc((void**)&dev_outMat, rows * rows * sizeof(int));
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaMalloc failed!");
        goto Error;
    }

    //clearMat(dev_outMat);

    // Copy cleared output matrix into the dev_outMat 
    /*cudaStatus = cudaMemcpy(*dev_outMat, *matrix, rows * rows * sizeof(int), cudaMemcpyHostToDevice);
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "To device cudaMemcpy failed!");
        goto Error;
    }*/

    // Launch a kernel on the GPU with one thread for each element.
    matMul CUDA_KERNEL(1, blockDims) (dev_outMat);

    // Check for any errors launching the kernel
    cudaStatus = cudaGetLastError();
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "addKernel launch failed: %s\n", cudaGetErrorString(cudaStatus));
        goto Error;
    }
    
    // cudaDeviceSynchronize waits for the kernel to finish, and returns
    // any errors encountered during the launch.
    cudaStatus = cudaDeviceSynchronize();
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaDeviceSynchronize returned error code %d after launching addKernel!\n", cudaStatus);
        goto Error;
    }

    // Copy output vector from GPU buffer to host memory.
    cudaStatus = cudaMemcpy(matrix, dev_outMat, rows * rows * sizeof(int), cudaMemcpyDeviceToHost);
    /*if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaMemcpy to host failed!");
        goto Error;
    }*/

    printMat(matrix, "Output Matrix");

Error:
    cudaFree(dev_outMat);
    
    return cudaStatus;
}

__global__ void matMul(int outputMat[matRows][matRows]) {
    outputMat[threadIdx.x][threadIdx.y] = 0;

    for (int i = 0; i < matRows; i++) {
        outputMat[threadIdx.x][threadIdx.y] += matrixA[threadIdx.x][i] * matrixB[i][threadIdx.y];
    }

}

void randMatVals(int matrix[rows][rows]) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < rows; j++) {
            // generates random values for a matrix between 0-200
            matrix[i][j] = rand() % 10;
        }
    }
}

void printMat(int mat[rows][rows], std::string string) {

    std::cout << string << std::endl;

    for (int i = 0; i < rows; i++) {
        std::cout << "[ ";

        for (int j = 0; j < rows; j++) {
            std::cout << mat[i][j];
            if (j != rows - 1) {
                std::cout << "\t";
            }
        }

        std::cout << " ]" << std::endl;
    }

}

void clearMat(int matrix[rows][rows]) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < rows; j++) {
            matrix[i][j] = 0;
        }
    }
}