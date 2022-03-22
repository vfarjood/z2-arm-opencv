#! /bin/sh

echo "-Setting up..."

export LD_LIBRARY_PATH=~/dev/code/z2-arm-opencv/lib/opencv-4/lib:$LD_LIBRARY_PATH
echo "-- LD_LIBRARY_PATH=~/dev/code/z2-arm-opencv/lib/opencv-4/lib"

cp scripts/run.sh run
echo "-- run file has been created!"
echo "Finished!"
echo "\n--------------------"
