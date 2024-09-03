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

// If need to do a bunch of matrix math, consider using eigen

void cannyEdgeDetection (int filterSize);
void grayscale ();
double* gaussianKernel (int matSize);

int main () {
    std::cout << "Beginning run" << std::endl;
    cannyEdgeDetection(5);
    return 0;
}

void cannyEdgeDetection (int filterSize) {

    // Steps for Algorithm
    // open image

    // grayscale image

    // Noise reduction (Gaussian blur/filter)

    // Gradient Calculation
    // Non-maximum suppression
    // double threshold
    // Edge tracking by hysteresis
}

void grayscale() {

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
