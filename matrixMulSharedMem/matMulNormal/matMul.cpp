/**
 * 
 * Implementation of matrix multiplication (template for CUDA implementation)
 * Author: Tasman Grinnell
 * 
**/

#include <cstdlib>

// number of rows for the matrix
constexpr int rows = 15;

void randMatVals(int** matrix);

int main() {

    int** mat = (int**) malloc(sizeof(int) * rows * rows);

    randMatVals(mat);

}

void randMatVals(int** matrix) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < rows; j++) {
            // generates random values for a matrix between 0-200
            matrix[i][j] = rand() % 200;
        }
    }
}