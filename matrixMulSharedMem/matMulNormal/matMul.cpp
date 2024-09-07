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

void randMatVals(int** matrix);
void matMul(int** matA, int** matB, int** outputMat);
void printMat(int** matrix, std::string string);

int main() {

    int** matA = (int**) malloc(sizeof(int) * rows * rows);
    int** matB = (int**) malloc(sizeof(int) * rows * rows);
    int** outMat = (int**) malloc(sizeof(int) * rows * rows);

    randMatVals(matA);
    randMatVals(matB);

    matMul(matA, matB, outMat);

    printMat(matA, "Matrix A");
    printMat(matB, "Matrix B");
    printMat(outMat, "Output Matrix");
}

void randMatVals(int** matrix) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < rows; j++) {
            // generates random values for a matrix between 0-200
            matrix[i][j] = rand() % 200;
        }
    }
}

void matMul(int** matA, int** matB, int** outputMat) {

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

void printMat(int** mat, std::string string) {

    std::cout << string << std::endl;
    
    for (int i = 0; i < rows; i++) {
        std::cout << "[ ";

        for (int j = 0; j < rows; j++) {
            std::cout << mat[i][j] << "\t";            
        }

        std::cout << " ]" << std::endl;
    }

}