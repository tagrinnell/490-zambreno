/**
 * 
 * Implementation of matrix multiplication (template for CUDA implementation)
 * Author: Tasman Grinnell
 * 
**/

#include <cstdlib>
#include <iostream>
#include <string>

// number of rows for the matrix
constexpr int rows = 3;

void randMatVals(int matrix[rows][rows]);
void matMul(int matA[rows][rows], int matB[rows][rows], int outputMat[rows][rows]);
void printMat(int matrix[rows][rows], std::string string);
void clearMat(int matrix[rows][rows]);

int main() {

    // Creates Matrices
    int matA[rows][rows];
    int matB[rows][rows];
    int outMat[rows][rows];

    // Generate random values for input matrices
    randMatVals(matA);
    randMatVals(matB);

    // Clears the output Matrix
    clearMat(outMat);

    matMul(matA, matB, outMat);

    printMat(matA, "Matrix A");
    printMat(matB, "Matrix B");
    printMat(outMat, "Output Matrix");
}

/**
 * Generates random values between 0-10 for a matrix
 */
void randMatVals(int matrix[rows][rows]) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < rows; j++) {
            // generates random values for a matrix between 0-200
            matrix[i][j] = rand() % 10;
        }
    }
}

/**
 * Multiplies two matrices together, storing in outputMat
 */
void matMul(int matA[rows][rows], int matB[rows][rows], int outputMat[rows][rows]) {

    int outMatX = 0;
    int outMatY = 0;

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < rows; j++) {
            for (int x = 0; x < rows; x++) {
                outputMat[i][j] += matA[i][x] * matB[x][j];
            }
        }
    }

}

/**
 * Prints a matrix Out.
 */
void printMat(int mat[rows][rows], std::string string) {

    std::cout  << string << std::endl;
    
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

/**
 * Clears a matrix, effectively memsetting
 */
void clearMat(int matrix[rows][rows]) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < rows; j++) {
            matrix[i][j] = 0;
        }
    }
}