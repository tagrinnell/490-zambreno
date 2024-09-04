/*
**
** Sequential implementation of Canny Edge Detection Algorithm
**
** Author: Tasman Grinnell
**
*/

#include <iostream>
#include <chrono>
#include <cmath>

// Use this link for example use of stb files
// https://solarianprogrammer.com/2019/06/10/c-programming-reading-writing-images-stb_image-libraries/

#define STB_IMAGE_IMPLEMENTATION
#include "../stbImage/stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "../stbImage/stb_image_write.h"


void cannyEdgeDetection (int filterSize);
void grayscale (int width, int height, int channels);
double* gaussianKernel (int matSize);

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

    grayscale(width, height, channels);

    // grayscale image

    // Noise reduction (Gaussian blur/filter)

    // Gradient Calculation
    // Non-maximum suppression
    // double threshold
    // Edge tracking by hysteresis

    stbi_image_free(image);
}

void grayscale(int width, int height, int channels) {

    unsigned char* grayImage = (unsigned char*) malloc(width * height * sizeof(unsigned char));

    // Gray = (Red * 0.2126 + Green * 0.7152 + Blue * 0.0722)
    for (int imageCtr = 0; imageCtr < width * height * channels; imageCtr += channels) {
        grayImage[imageCtr / 3] = (image[imageCtr] * 0.2126 + image[imageCtr + 1] * 0.7152 + image[imageCtr + 2] * 0.0722);
    }

    stbi_write_jpg("..\\exampleImages\\grayscaled.jpg", width, height, 1, grayImage, width);

}

/*
Pseudocode:
def gaussian_kernel(size, sigma=1):
    size = int(size) // 2
    x, y = np.mgrid[-size:size+1, -size:size+1]
    normal = 1 / (2.0 * np.pi * sigma**2)
    g =  np.exp(-((x**2 + y**2) / (2.0*sigma**2))) * normal
    return g
*/
// Returns a gaussian Filter kernel of matSize size, 
double* gaussianKernel (int matSize) {
    double sigma = 1.0;


    return NULL;
}
