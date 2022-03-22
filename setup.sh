#! /bin/sh

echo "-Setting up..."
echo '~/dev/code/z2-arm-opencv/lib/opencv-4/lib' >> /etc/ld.so.conf.d/arm-linux-gnueabihf.conf
echo "-- LD_LIBRARY_PATH=~/dev/code/z2-arm-opencv/lib/opencv-4/lib"

cp scripts/run.sh run
echo "-- run file has been created!"
echo "Finished!"
echo "--------------------"
