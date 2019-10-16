#!/bin/bash
echo "alias tegrastats='/usr/bin/tegrastats'
alias jetson_clocks='/usr/bin/jetson_clocks'
export PATH=/usr/local/cuda-10.0/bin:\$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64:\$LD_LIBRARY_PATH" >> ~/.bashrc
source ~/.bashrc
sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo apt-get update
sudo apt-get install -y \
 gstreamer1.0-tools gstreamer1.0-alsa \
 gstreamer1.0-plugins-base gstreamer1.0-plugins-good \
 gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly \
 gstreamer1.0-libav \
 libgstreamer1.0-dev \
 libgstreamer-plugins-base1.0-dev \
 libgstreamer-plugins-good1.0-dev \
 libgstreamer-plugins-bad1.0-dev \
 cmake libgflags-dev v4l-utils
mv Makefile_nano Makefile && make && mkdir bin && cd bin && wget https://pjreddie.com/media/files/yolov3-tiny.weights && wget https://pjreddie.com/media/files/yolov3.weights && cp yolov3.weights ../ && cd .. && chmod +x yolov3-tiny_usbcam.sh
