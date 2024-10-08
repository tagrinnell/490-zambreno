﻿/*
**
** Parallelized implementation of Unoptimized Algorithm to generate the Mandelbrot Set.
** Written and tested on the CUDA 12.4 Toolkit
**
** Author: Tasman Grinnell
**
**/


#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <stdio.h>
#include <vector>
#include <iostream>
#include <fstream>
#include <chrono>

#ifdef __INTELLISENSE__
#define CUDA_KERNEL(...)
#else
#define CUDA_KERNEL(...) <<< __VA_ARGS__ >>>
#endif

constexpr int X = 1920;
constexpr int Y = 1080;

__device__ int xParam = X;
__device__ int yParam = Y;

struct Point {
    int x;
    int y;
    int iteration;
    int sizeX;
    int sizeY;
};

cudaError_t mandelBrotCalc(struct Point* pointArray, unsigned long size);

__global__ void computeSet(struct Point* returnPointArr) {   

    // Calculates Strides by finding the area a block is supposed to work on and add an offset based on the thread ID.
    //                              BEGINNING OF BLOCK                 THREAD OFFSET
    int block_xStart    = xParam * ((double) blockIdx.x / gridDim.x) + xParam * threadIdx.x / blockDim.x / gridDim.x;
    int block_xEnd      = xParam * ((double) blockIdx.x / gridDim.x) + xParam * (threadIdx.x + 1) / blockDim.x / gridDim.x;

    int block_yStart    = yParam * ((double) blockIdx.y / gridDim.y) + yParam * threadIdx.y / blockDim.y / gridDim.y;
    int block_yEnd      = yParam * ((double) blockIdx.y / gridDim.y) + yParam * (threadIdx.y + 1) / blockDim.y / gridDim.y;
    
    // Unoptimized escape algorithm
    for (int i = block_xStart; i < block_xEnd; i++)
    {
        for (int j = block_yStart; j < block_yEnd; j++)
        {

            float x0 = i / (double) xParam * 2.47 - 2;
            float y0 = j / (double) yParam * 2.24 - 1.12;
            float x = 0.0;
            float y = 0.0;

            int iteration = 0;
            int max_iteration = 1000;

            while (x * x + y * y <= (2 * 2) && iteration < max_iteration)
            {
                float xtemp = x * x - y * y + x0;
                y = 2 * x * y + y0;
                x = xtemp;

                iteration++;
            }

            struct Point newPoint = { i, j, iteration, 0, 0 };

            returnPointArr[i * yParam + j] = newPoint;

        }

    }
}

/*
*
* Unoptimized escape for calculating the Mandelbrot Set
* 
*/
int main()
{
    std::cout.setf(std::ios_base::unitbuf);

    struct Point *pointArray = new struct Point[X * Y];

    std::cout << "Beginning Calculation" << std::endl;
    
    auto tStart = std::chrono::high_resolution_clock::now();
    // Add vectors in parallel.
    cudaError_t cudaStatus = mandelBrotCalc(pointArray, (unsigned long) X * Y );
    auto tEnd = std::chrono::high_resolution_clock::now() ;

    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "mandelBrotCalc failed!");
        return 1;
    } 

    std::cout << "Ending Calculation successfully, Beginning file output" << std::endl;
    
    // Output Stream
    // TODO: Modify for actual use
    std::ofstream file("MandelSetOut_Parallel.csv");

    file << "X,Y,Iteration,sizeX,sizeY" << std::endl;

    for (int i = 0; i < X * Y; i++) {
        if (i == 0) {
            file << pointArray[i].x << "," << pointArray[i].y << "," << pointArray[i].iteration << ","
                << X << "," << Y
                << std::endl;
        }

        file << pointArray[i].x << "," << pointArray[i].y << "," << pointArray[i].iteration << ",0,0" << std::endl;
    }

    // Output results
    std::cout << "Ending file output" << std::endl;

    // cudaDeviceReset must be called before exiting 
    cudaStatus = cudaDeviceReset();
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaDeviceReset failed!");
        return 1;
    }

    return 0;
}

// Helper function for using CUDA to calculate mandelBrot set in parallel.
cudaError_t mandelBrotCalc (struct Point* pointArray, unsigned long size)
{
    struct Point *dev_points = 0;

    dim3 nthreads(16, 9);
    dim3 nblocks(6, 6);

    cudaError_t cudaStatus;

    // Choose which GPU to run on, change this on a multi-GPU system.
    cudaStatus = cudaSetDevice(0);
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaSetDevice failed!  Do you have a CUDA-capable GPU installed?");
        goto Error;
    }

    // Allocate GPU buffers for output vector
    cudaStatus = cudaMalloc((void**)&dev_points, X * Y * sizeof(struct Point));
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaMalloc failed!");
        goto Error;
    }

    // Call kernel
    computeSet CUDA_KERNEL (nblocks, nthreads)  (dev_points);

    // Check for any errors launching the kernel
    cudaStatus = cudaGetLastError();
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "computeSet launch failed: %s\n", cudaGetErrorString(cudaStatus));
        goto Error;
    }
    
    // Wait for kernel to finish
    cudaStatus = cudaDeviceSynchronize();
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaDeviceSynchronize returned error code %d after launching computeSet!\n", cudaStatus);
        goto Error;
    }

    // Copy output vector from GPU buffer to host memory.
    cudaStatus = cudaMemcpy(pointArray, dev_points, X * Y * sizeof(struct Point), cudaMemcpyDeviceToHost);
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaMemcpy points failed!");
        goto Error;
    }

Error:
    cudaFree(dev_points);
    
    return cudaStatus;
}
