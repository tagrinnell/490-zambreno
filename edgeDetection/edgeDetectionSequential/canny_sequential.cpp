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

//-----------------------------------------------------GLOBAL VARS---------------------------------------------------------------------------//

constexpr int kernelSize = 5;

//---------------------------------------------------CANNY FUNCTIONS-------------------------------------------------------------------------//

void cannyEdgeDetection ();
void gaussianKernel (double kernel[kernelSize][kernelSize]);
void gaussianBlur(int width, int height, std::vector<char> imV);

//---------------------------------------------------HELPER FUNCTIONS------------------------------------------------------------------------//

std::vector<char> grayscale(int width, int height, int channels, std::vector<char> v);
std::vector <std::vector <char>> convertTo2DVec(std::vector <char> array, int width, int height);
std::vector <char> convertTo1DVec(std::vector <std::vector <char>> inpVec, int width, int height);

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
    std::vector<char> iVector(image, image + width * height * channels);

    std::cout << "Loaded image with a width of " << width << ", a height of " << height << " and " << channels << " channels" << std::endl; 

    // Grayscale the Image to 
    iVector = grayscale(width, height, channels, iVector);
    
    // // Noise reduction (Gaussian blur/filter)
    gaussianBlur(width, height, iVector);

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
        char gray = v.at(imageCtr) * 0.3333 + v.at(imageCtr + 1) * 0.7152 + v.at(imageCtr + 2) * 0.0722;
        grayVec.push_back(gray);
        // grayVec.push_back(gray);
        // grayVec.push_back(gray);
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
void gaussianBlur(int width, int height, std::vector<char> imV) {
    double kernel[kernelSize][kernelSize];

    gaussianKernel(kernel);

    std::vector <std::vector<char>> expVec = convertTo2DVec(imV, width, height);
    std::vector<char> outVector;

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

                    accumX += kernel[k][l] * expVec.at(x).at(y);
                    accumY += kernel[k][l] * expVec.at(x).at(y);
                 }
             }
            int accum = sqrt((accumX * accumX) + (accumY * accumY));
            accum = fmax(0, fmin(255, accum));

            outVector.push_back(accum);
         }
     }

     stbi_write_jpg("..\\outputImages\\gaussBlur.jpg", width, height, 1, reinterpret_cast<char*>(outVector.data()), width);
}

std::vector <std::vector <char>> convertTo2DVec(std::vector <char> array, int width, int height) {
    // Output will be height# vectors with width# chars
    std::vector <std::vector <char>> outVec;
    
    for (int i = 0; i < height; i++) {
        std::vector <char> appVec;
        for (int j = 0; j < width; j++) {
            appVec.push_back(array.at(i * width + j));
        }
        outVec.push_back(appVec);
    }

    return outVec;
}

std::vector <char> convertTo1DVec(std::vector <std::vector <char>> inpVec, int width, int height) {
    std::vector <char> outVec;

    for (int i = 0; i < height; i++) {
        std::vector <char> endVec = inpVec.at(i);
        for (int j = 0; j < width; j++) {
            outVec.push_back(endVec.at(j));
        }
    }

    return outVec;
}