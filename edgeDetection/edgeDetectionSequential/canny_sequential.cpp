/*
**
** Sequential implementation of Canny Edge Detection Algorithm
**
** Author: Tasman Grinnell
**
*/

// Use this link for example use of stb files
// https://solarianprogrammer.com/2019/06/10/c-programming-reading-writing-images-stb_image-libraries/

#define _USE_MATH_DEFINES
#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_WRITE_IMPLEMENTATION

#include <iostream>
#include <chrono>
#include <cmath>
#include "../stbImage/stb_image.h"
#include "../stbImage/stb_image_write.h"

constexpr int kernelSize = 5;

void cannyEdgeDetection (int filterSize);
void grayscale (int width, int height, int channels);
void gaussianKernel (double kernel[kernelSize][kernelSize]);
void gaussianBlur(int width, int height);

unsigned char* image;

int main () {
    std::cout << "Beginning run" << std::endl;
    cannyEdgeDetection(5);
    return 0;
}

void cannyEdgeDetection (int filterSize) {

    // Steps for Algorithm
    // open image
    int width, height, channels;
    image = stbi_load("C:\\Users\\tasma\\Desktop\\Textbooks\\490-zambreno\\edgeDetection\\exampleImages\\numbat.jpeg", &width, &height, &channels, 3);

    std::cout << "Loaded image with a width of " << width << ", a height of " << height << " and " << channels << " channels" << std::endl; 

    // Grayscale the Image to 
    grayscale(width, height, channels);
    
    // Noise reduction (Gaussian blur/filter)
    gaussianBlur(width,height);

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
void grayscale(int width, int height, int channels) {

    // Allocate
    unsigned char* grayImage = (unsigned char*) malloc(width * height * sizeof(unsigned char));

    // Gray = (Red * 0.2126 + Green * 0.7152 + Blue * 0.0722)
    for (int imageCtr = 0; imageCtr < width * height * channels; imageCtr += channels) {
        grayImage[imageCtr / 3] = (image[imageCtr] * 0.2126 + image[imageCtr + 1] * 0.7152 + image[imageCtr + 2] * 0.0722);
    }

    image = grayImage;

    // Write grayscaled Image as a log
    stbi_write_jpg("..\\exampleImages\\grayscaled.jpg", width, height, 1, image, width);

}


// Returns a gaussian Filter kernel of matSize size, 
void gaussianKernel (double kernel[kernelSize][kernelSize]) {
    double sigma = 1.0;
    double mean = kernelSize / 2.0;
    double sum = 0.0;
 
    for (int i = 0; i < kernelSize; i++) {
        for (int j = 0; j < kernelSize; j++) {
            kernel[i][j] = exp( -0.5 * (pow((i - mean) / sigma, 2.0) + pow((j - mean) / sigma, 2.0)) ) / (2 * M_PI * sigma * sigma);
            sum += kernel[i][j];
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
void gaussianBlur(int width, int height) {
    double kernel[kernelSize][kernelSize];

    gaussianKernel(kernel);

    // Convolve the matrix
    for (int i = 0; i < width; i++) {
        for (int j = 0; j < height; j++) {
            
            
            for (int k = 0; k < kernelSize; k++) {
                for (int l = 0; l < kernelSize; l++) {
                    image[i * width + j] = 0;
                }
            }

        }
    }
}