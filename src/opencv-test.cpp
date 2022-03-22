#include <opencv2/opencv.hpp>
#include <iostream>
#include <opencv-testConfig.h>

int main(int argc, char* argv[])
{	
        std::cout << "-PROGRAM_VERSION: " << OPENCVTEST_VERSION_MAJOR << "." << OPENCVTEST_VERSION_MINOR << std::endl;
	std::cout << "-OPENCV_VERSION : " << CV_VERSION << '\n';

	cv::Mat input = cv::imread("media/lake.jpg", 1);
	if(!input.data) {
		std::cout << "Error! Unable to find the image file!\n";
		return -1;
	}

	cv::Mat gray;
	cvtColor(input, gray, cv::COLOR_BGR2GRAY);

	cv::imwrite("output/lake_gray.jpg", gray);
	std::cout << "File has been saved to: 'output/lake_gray.jpg'" << std::endl;
}

