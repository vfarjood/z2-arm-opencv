#! /bin/sh

echo "-Building CMake..."
rm -rf ~/dev/code/z2-arm-opencv/build
mkdir ~/dev/code/z2-arm-opencv/build
cmake -S ~/dev/code/z2-arm-opencv/ -B ~/dev/code/z2-arm-opencv/build
echo "Finished!"
echo "--------------------"
