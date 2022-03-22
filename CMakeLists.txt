#Specifies the minimum requirement of CMake
cmake_minimum_required(VERSION 3.13.4)

#Specifies the version of the program
project(opencv-test VERSION 1.0)


set(CMAKE_SYSTEM_PROCESSOR arm)
set(TC_PATH "/usr/bin/")
set(CROSS_COMPILE arm-linux-gnueabihf-)

set(CMAKE_CXX_COMPILER "${TC_PATH}${CROSS_COMPILE}g++")
set(CMAKE_LINKER "${IC_PATH}${CROSS_COMPILE}1d")
set(CMAKE_AR "${TC_PATH}${CROSS_COMPILE}ar")

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -Wl,-rpath,${PROJECT_SOURCE_DIR}/lib/opencv-4/lib/")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")

#Executable files
add_executable(${PROJECT_NAME} src/opencv-test.cpp)


# add_subdirectory(lib/opencv)
option(USE_LIB_OPENCV "OPENCV library for Computer Vision" YES)
set(CMAKE_INSTALL_RPATH "${PROJECT_SOURCE_DIR}/lib/opencv-4/lib/")
list(APPEND EXTRA_LIB_DIRS lib/opencv-4/lib)
list(APPEND EXTRA_INCLUDE_DIRS lib/opencv-4/include/opencv4)
list(APPEND EXTRA_LINKS opencv_core opencv_imgproc opencv_imgcodecs)

#Add the name of third-party libraries
target_link_libraries(${PROJECT_NAME} ${EXTRA_LINKS})

#Configure file for version
configure_file(opencv-testConfig.h.in opencv-testConfig.h) 

#Add INCLUDE directories of third-party libraries
target_include_directories(${PROJECT_NAME} 
    PUBLIC ${PROJECT_BINARY_DIR}
    PUBLIC ${EXTRA_INCLUDE_DIRS})

#Add LIB or SRC directories of third-party libraries
target_link_directories(${PROJECT_NAME} PRIVATE ${EXTRA_LIB_DIRS})

#Add the name of third-party libraries
target_link_libraries(${PROJECT_NAME} ${EXTRA_LINKS})


#install(TARGETS ${PROJECT_NAME} DESTINATION bin)
#install(FILES "${PROJECT_BINARY_DIR}/opencv-testConfig.h" DESTINATION include)

