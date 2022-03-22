#! /bin/sh
echo "-Building CMake..."
./configure.sh
echo "\n--------------------"

echo "-Building MakeFile..."
./build.sh
echo "\n--------------------"

echo "-Running The Program..."
./run.sh
echo "\n--------------------"

