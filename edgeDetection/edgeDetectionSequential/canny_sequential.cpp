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
#include <vector>
#include "../stbImage/stb_image.h"
#include "../stbImage/stb_image_write.h"

constexpr int kernelSize = 5;

void cannyEdgeDetection (int filterSize);
std::vector<char> grayscale(int width, int height, int channels, std::vector<char> v);
void gaussianKernel (double kernel[kernelSize][kernelSize]);
void gaussianBlur(int width, int height, std::vector<char> imV);

int main () {
    std::cout << "Beginning run" << std::endl;
    cannyEdgeDetection(5);
    return 0;
}

void cannyEdgeDetection (int filterSize) {

    // Steps for Algorithm
    // open image
    int width, height, channels;
    unsigned char *image;
    
    image = stbi_load("..\\numbat.jpeg", &width, &height, &channels, 3);
    std::vector<char> iVector(image, image + width * height * channels);

    std::cout << "Loaded image with a width of " << width << ", a height of " << height << " and " << channels << " channels" << std::endl; 

    // Grayscale the Image to 
    iVector = grayscale(width, height, channels, iVector);
    stbi_write_jpg("..\\outputImages\\anotherCheck.jpg", width, height, 1, reinterpret_cast<char*>(iVector.data()), width);
    
    // Noise reduction (Gaussian blur/filter)
    gaussianBlur(width,height, iVector);

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

std::vector<char> grayscale(int width, int height, int channels, std::vector<char> v) {

    // Allocate
    std::vector<char> grayVec;

    // Gray = (Red * 0.2126 + Green * 0.7152 + Blue * 0.0722)
    for (int imageCtr = 0; imageCtr < width * height * channels; imageCtr += channels) {
        grayVec.push_back(v.at(imageCtr) * 0.2126 + v.at(imageCtr + 1) * 0.7152 + v.at(imageCtr + 2) * 0.0722); // image[imageCtr] * 0.2126 + image[imageCtr + 1] * 0.7152 + image[imageCtr + 2] * 0.0722);
    }

    // Write grayscaled Image
    stbi_write_jpg("..\\outputImages\\grayscaled.jpg", width, height, 1, reinterpret_cast<char*>(grayVec.data()), width);
    return grayVec;
}


// Returns a gaussian Filter kernel of matSize size, 
void gaussianKernel (double kernel[kernelSize][kernelSize]) {
    double sigma = 1.0;
    double mean = kernelSize / 2.0;
    double sum = 0.0;
 
    for (int i = 0; i < kernelSize; i++) {
        for (int j = 0; j < kernelSize; j++) {
            kernel[i][j] = exp(-1.0 * ((i * i + j * j) / (2 * sigma * sigma))) / (2 * M_PI * sigma * sigma);
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
void gaussianBlur(int width, int height, std::vector<char> imV) {
    double kernel[kernelSize][kernelSize];

    gaussianKernel(kernel);

    // Convolve the matrix
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            float accumX = 0;
            float accumY = 0;
            
            for (int k = 0; k < kernelSize; k++) {
                for (int l = 0; l < kernelSize; l++) {
                    float valX = 0.0;
                    float valY = 0.0;

                    // If we're reaching into the next row (overflowing on right side of image), set multiplier to 0.0
                    

                    accumX += valX * kernel[k][l];
                    accumY += valY * kernel[k][l];
                 }
             }
            //  image[i * width + j] = (char) sqrt(accumX * accumX + accumY * accumY); // fmax(0, fmin(255, 
         }
     }

     stbi_write_jpg("..\\outputImages\\gaussBlur.jpg", width, height, 1, reinterpret_cast<char*>(imV.data()), width);
}