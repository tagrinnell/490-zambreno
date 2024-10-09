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
void gaussianBlur (int width, int height, unsigned char *inArr);

//---------------------------------------------------HELPER FUNCTIONS------------------------------------------------------------------------//

void grayscale (int width, int height, int channels, unsigned char *image);
unsigned char** convertTo2DArr (unsigned char* inArr, int width, int height);
char* convertTo1DVec (unsigned char** inArr, int width, int height);

//-------------------------------------------------------MAIN--------------------------------------------------------------------------------//

int main () {
    std::cout << "Beginning run" << std::endl;
    cannyEdgeDetection();
    return 0;
}

void cannyEdgeDetection () {
    // open image
    int width, height, channels;
    unsigned char *image;
    
    image = stbi_load("..\\numbat.jpeg", &width, &height, &channels, 3);

    std::cout << "Loaded image with a width of " << width << ", a height of " << height << " and " << channels << " channels" << std::endl; 

    // Grayscale the Image to 
    grayscale(width, height, channels, image);
    
    // // Noise reduction (Gaussian blur/filter)
    gaussianBlur(width, height, image);

    // Gradient Calculation
    // Non-maximum suppression
    // double threshold
    // Edge tracking by hysteresis

    stbi_image_free(image);
}

/**
 * 
 * Grayscales the input image using formula found on (2) - Luma Method:
 * https://tannerhelland.com/2011/10/01/grayscale-image-algorithm-vb6.html
 * 
 */
void grayscale(int width, int height, int channels, unsigned char *image) {

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
/*
Think about this
https://www.baeldung.com/cs/convolution-matrix-multiplication

for each image row in input image:
    for each pixel in image row:
    
        set accumulator to zero

        for each kernel row in kernel:
            for each element in kernel row:

                if element position  corresponding* to pixel position then
                    multiply element value  corresponding* to pixel value
                    add result to accumulator
                endif

         set output image pixel to accumulator
*/
void gaussianBlur (int width, int height, unsigned char *inArr) {
    double kernel[kernelSize][kernelSize];

    gaussianKernel(kernel);

    unsigned char** mat = convertTo2DArr(inArr, width, height);
    unsigned char** blur = (unsigned char**) malloc(width * height * sizeof(unsigned char));

    // Convolve the matrix
    for (int i = 0; i < height; i++) {
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

unsigned char** convertTo2DArr (unsigned char *inArr, int width, int height) {
    // Output will be height# vectors with width# chars
    unsigned char** outArr = (unsigned char**) malloc(width * height * sizeof(unsigned char));
    
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            outArr[i][j] = inArr[i * height + j];
        }
    }

    return outArr;
}

char* convertTo1DVec(unsigned char **inArr, int width, int height) {
    char* outArr = (char*) malloc(width * height * sizeof(char));

    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            outArr[i * width + j] = inArr[i][j];
        }
    }

    return outArr;
}