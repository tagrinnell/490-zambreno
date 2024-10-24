/*
**
** Sequential implementation of Canny Edge Detection Algorithm
**
** Author: Tasman Grinnell
**
*/

#define _USE_MATH_DEFINES
#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_WRITE_IMPLEMENTATION

#include <iostream>
#include <chrono>
#include <cmath>
#include <vector>
#include "../stbImage/stb_image.h"
#include "../stbImage/stb_image_write.h"
 
//-----------------------------------------------------GLOBAL VARS---------------------------------------------------------------------------//

constexpr int kernelSize = 5;

//---------------------------------------------------CANNY FUNCTIONS-------------------------------------------------------------------------//

void cannyEdgeDetection ();
void gaussianKernel (double kernel[kernelSize][kernelSize]);
void gaussianBlur (unsigned char *inArr, int width, int height);
float** gradientSobelX (unsigned char *inArr, int width, int height);
float** gradientSobelY (unsigned char *inArr, int width, int height);

//---------------------------------------------------HELPER FUNCTIONS------------------------------------------------------------------------//

void grayscale (unsigned char *image, int width, int height, int channels);
unsigned char** convertTo2DArr (unsigned char* inArr, int width, int height);
unsigned char* convertTo1DArr(unsigned char **inArr, int width, int height);
unsigned char* convolve(unsigned char* input, double** kernel, int kernelSize, int width, int height);

//-------------------------------------------------------MAIN--------------------------------------------------------------------------------//

int main () {
    std::cout << "Beginning run" << std::endl;
    cannyEdgeDetection();
    return 0;
}

//----------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------EDGE DETECTOR-----------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------//

void cannyEdgeDetection () {
    // open image
    int width, height, channels;
    unsigned char *image;
    
    image = stbi_load("..\\numbat.jpeg", &width, &height, &channels, 3);

    std::cout << "Loaded image with a width of " << width << ", a height of " << height << " and " << channels << " channels" << std::endl; 

    // Grayscale the Image to 
    grayscale(image, width, height, channels);
    
    // // Noise reduction (Gaussian blur/filter)
    gaussianBlur(image, width, height);

    // Gradient Calculation
    // Non-maximum suppression
    // double threshold
    // Edge tracking by hysteresis

    stbi_image_free(image);
}

//----------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------//
//-----------------------------------------------------------------SUB METHODS------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------//

/**
 * 
 * Grayscales the input image using formula found on (2) - Luma Method:
 * https://tannerhelland.com/2011/10/01/grayscale-image-algorithm-vb6.html
 * 
 */
void grayscale(unsigned char *image, int width, int height, int channels) {

    // Allocate
    unsigned char* grayImage = (unsigned char*) malloc(width * height * sizeof(unsigned char));

    // Gray = (Red * 0.2126 + Green * 0.7152 + Blue * 0.0722)
    for (int imageCtr = 0; imageCtr < width * height * channels; imageCtr += channels) {
        grayImage[imageCtr / 3] = (image[imageCtr] * 0.2126 + image[imageCtr + 1] * 0.7152 + image[imageCtr + 2] * 0.0722);
    }

    memcpy(image, grayImage, width * height);

    // Write grayscaled Image as a log
    stbi_write_jpg("..\\outputImages\\grayscaled.jpg", width, height, 1, image, width);

}


// Returns a gaussian Filter kernel of matSize size, 
void gaussianKernel (double kernel[kernelSize][kernelSize]) {
    double sigma = 1.0;
    double mean = kernelSize / 2.0;
    double sum = 0.0;
 
    for (int i = -1 * kernelSize / 2; i <= kernelSize / 2; i++) {
        for (int j = -1 * kernelSize / 2; j <= kernelSize / 2; j++) {
            kernel[i + kernelSize / 2][j + kernelSize / 2] = exp(-1.0 * ((i * i + j * j) / (2 * sigma * sigma))) / sqrt (2 * M_PI * sigma * sigma);
            sum += kernel[i + kernelSize / 2][j + kernelSize / 2];
        }
    }

    for (int i = 0; i < kernelSize; i++) {
        for (int j = 0; j < kernelSize; j++) {
            kernel[i][j] /= sum;
        }
    }

}

/**
 * Generate Gaussian Kernel, then apply the blur by convolving with the image.
 */
void gaussianBlur (unsigned char *inArr, int width, int height) {
    double kernel[kernelSize][kernelSize];

    gaussianKernel(kernel);

    unsigned char** mat = convertTo2DArr(inArr, width, height);

    // unsigned char* blur = convolve(inArr, (double* [kernelSize]) kernel, kernelSize, width, height);

    unsigned char** blur = new unsigned char*[height];

    // Convolve the matrix
    for (int i = 0; i < height; i++) {
        blur[i] = new unsigned char[width];
        for (int j = 0; j < width; j++) {   
            int accumX = 0;
            int accumY = 0;
            
            for (int k = 0; k < kernelSize; k++) {
                for (int l = 0; l < kernelSize; l++) {

                    int x = i + (k - kernelSize / 2);
                    int y = j + (l - kernelSize / 2);
                    
                    // Make sure we're in bounds
                    if (x < 0 || y < 0) {
                        x = fmax(0, x);
                        y = fmax(0, y);
                    } 
                    
                    if (x > height - 1 || y > width - 1) {
                        x = fmin(height - 1, x);
                        y = fmin(width - 1, y);
                    }

                    accumX += kernel[k][l] * mat[x][y];
                    accumY += kernel[k][l] * mat[x][y];
                 }
             }
            int accum = sqrt((accumX * accumX) + (accumY * accumY));
            accum = fmax(0, fmin(255, accum));

            blur[i][j] = accum;
        }
    }

    stbi_write_jpg("..\\outputImages\\gaussBlur.jpg", width, height, 1, blur, width);
}

// Need to return the Gx, Gy matrices

float** gradientSobelX (unsigned char *inArr, int width, int height) {
    int sobelSize = 3;

    float sobX[3][3] = {
        {-1, 0, 1},
        {-2, 0, 2},
        {-1, 0, 1}
    };
    float sobY[3][3] = {
        {-1, -2, -1},
        {0, 0, 0},
        {1, 2, 1}
    };

    unsigned char** mat = convertTo2DArr(inArr, width, height);

    unsigned char** appliedX = new unsigned char*[height];
    unsigned char** appliedY = new unsigned char*[height];

    // Convolve the matrix
    for (int i = 0; i < height; i++) {
        appliedX[i] = new unsigned char[width];
        appliedY[i] = new unsigned char[width];
        for (int j = 0; j < width; j++) {
            int accSobXX = 0;
            int accSobXY = 0;
            int accSobYX = 0;
            int accSobYY = 0;
            
            for (int k = 0; k < sobelSize; k++) {
                for (int l = 0; l < sobelSize; l++) {

                    int x = i + (k - sobelSize / 2);
                    int y = j + (l - sobelSize / 2);
                    
                    // Make sure we're in bounds
                    if (x < 0 || y < 0) {
                        x = fmax(0, x);
                        y = fmax(0, y);
                    } 
                    
                    if (x > height - 1 || y > width - 1) {
                        x = fmin(height - 1, x);
                        y = fmin(width - 1, y);
                    }

                    accSobXX += sobX[k][l] * mat[x][y];
                    accSobXY += sobX[k][l] * mat[x][y];
                    accSobYX += sobY[k][l] * mat[x][y];
                    accSobYY += sobY[k][l] * mat[x][y];
                }
             }
            int accSobX = sqrt((accSobXX * accSobXX) + (accSobXY * accSobXY));
            int accSobY = sqrt((accSobYX * accSobYX) + (accSobYY * accSobYY));
            accSobX = fmax(0, fmin(255, accSobX));
            accSobY = fmax(0, fmin(255, accSobY));

            appliedX[i][j] = accSobX;
            appliedY[i][j] = accSobY;
        }
    }

    // Perform the calculation for the hypotenuse and angle
    // G = np.hypot(Ix, Iy)
    // Matrix multiply and store in hypot pointer passed into the function


    // G = G / G.max() * 255
    // theta = np.arctan2(Iy, Ix)
    

    // stbi_write_jpg("..\\outputImages\\gaussBlur.jpg", width, height, 1, blur, width);
}



// https://towardsdatascience.com/canny-edge-detection-step-by-step-in-python-computer-vision-b49c3a2d8123



//----------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------//
//---------------------------------------------------------------HELPER FUNCTIONS---------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------//


unsigned char** convertTo2DArr (unsigned char *inArr, int width, int height) {
    // Output will be height# vectors with width# chars
    unsigned char **outArr = new unsigned char*[height];

    for (int i = 0; i < height; i++) {
        outArr[i] = new unsigned char[width];
        for (int j = 0; j < width; j++) {
            outArr[i][j] = inArr[i * width + j];
        }
    }

    return outArr;
}

unsigned char* convertTo1DArr(unsigned char **inArr, int width, int height) {
    unsigned char* outArr = new unsigned char[width * height];

    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            outArr[i * width + j] = inArr[i][j];
        }
    }

    return outArr;
}

// TODO: Maybe look at this?
//
/*
// unsigned char* convolve(unsigned char* input, double*[] kernel, int kSize, int width, int height) {
//     unsigned char** mat = convertTo2DArr(input, width, height);    
//     unsigned char** output2D = new unsigned char*[height];
//
//     // Convolve the matrix
//     for (int i = 0; i < height; i++) {
//         output2D[i] = new unsigned char[width];
//         for (int j = 0; j < width; j++) {
//             int accumX = 0;
//             int accumY = 0;
            
//             for (int k = 0; k < kSize; k++) {
//                 for (int l = 0; l < kSize; l++) {

//                     int x = i + (k - kSize / 2);
//                     int y = j + (l - kSize / 2);
                    
//                     // Make sure we're in bounds
//                     if (x < 0 || y < 0) {
//                         x = fmax(0, x);
//                         y = fmax(0, y);
//                     } 
                    
//                     if (x > height - 1 || y > width - 1) {
//                         x = fmin(height - 1, x);
//                         y = fmin(width - 1, y);
//                     }

//                     accumX += kernel[k][l] * mat[x][y];
//                     accumY += kernel[k][l] * mat[x][y];
//                  }
//              }
//             int accum = sqrt((accumX * accumX) + (accumY * accumY));
//             accum = fmax(0, fmin(255, accum));

//             output2D[i][j] = accum;
//         }
//     }

//     return convertTo1DArr(output2D, width, height);
// }*/