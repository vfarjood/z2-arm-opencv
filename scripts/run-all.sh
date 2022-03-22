#! /bin/sh
echo "-Building CMake..."
~/dev/code/z2-arm-opencv/scripts/configure.sh
echo "\n--------------------"

echo "-Building MakeFile..."
~/dev/code/z2-arm-opencv/scripts/build.sh
echo "\n--------------------"

echo "-Running The Program..."
~/dev/code/z2-arm-opencv/scripts/run.sh
echo "\n--------------------"

