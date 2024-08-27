/*
** Mandelbrot Set calculation algorithm using unoptimized escape loop/conditions.
**
** Author: Tasman Grinnell 
**
*/

// Initial Testing: 1280x720 points
// Scaled

#include <vector>
#include <iostream>
#include <fstream>
#include <chrono>

#define X 1920
#define Y 1080

#define max_iteration 5000

long int numIterations;

struct Point {
    int x;
    int y;
    int iteration;
    int sizeX;
    int sizeY;
};

void unoptimized_Escape(std::vector<struct Point> *set);

int main () {

    std::vector <struct Point> mandelSet;

    numIterations = 0;

    auto tStart = std::chrono::high_resolution_clock::now();

    unoptimized_Escape(&mandelSet);

    auto tEnd = std::chrono::high_resolution_clock::now() ;

    // Write data out to a file
    // TODO: MODIFY FOR USE
    std::ofstream file ("MandelSetOut.csv"); 
    std::ofstream timing ("timing_unopt.txt");

    file << "X,Y,Iteration,sizeX,sizeY" << std::endl;

    for (int i = 0; i < mandelSet.size(); i++) {
        if (i == 0) {
            file << mandelSet.at(i).x << "," << mandelSet.at(i).y << "," << mandelSet.at(i).iteration << ","
                << mandelSet.at(i).sizeX << ","
                << mandelSet.at(i).sizeY  << std::endl;
        }

        file << mandelSet.at(i).x << "," << mandelSet.at(i).y << "," << mandelSet.at(i).iteration << ",0,0" << std::endl;
    }

    file.close();

    const std::chrono::duration<double, std::milli> dur = (tEnd - tStart);

    timing << numIterations << " Iterations in " << dur.count() << "ms using params:\n X = " << X << ", Y = "<< Y<< std::endl;

    timing.close();

    return 0;
}

/*
 * Mandelbrot Calculation using unoptimized Escape 
**/
void unoptimized_Escape(std::vector<struct Point> *set) {

    for (int i = 0; i < X; i++) {
        for (int j = 0; j < Y; j++) {

            float x0 = i / (double) X * 2.47 - 2;
            float y0 = j / (double) Y * 2.24- 1.12;
            float x = 0.0;
            float y = 0.0;

            int iteration = 0;

            while (x * x + y * y <= (2 * 2) && iteration < max_iteration) {
                float xtemp = x * x - y * y + x0;
                y = 2 * x * y + y0;
                x = xtemp;
                
                iteration++;
            }

            struct Point newPoint;

            // Include image size params in first point
            if (i != 0 || j != 0) {
                newPoint = {i, j, iteration, 0, 0};
            } else {
                newPoint = {i, j, iteration, X, Y};
            }
            
            set->push_back(newPoint);
            
            numIterations++;
        }

        numIterations++;
    }
}