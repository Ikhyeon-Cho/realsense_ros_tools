#!/bin/bash

# Create the directory if it doesn't exist
mkdir -p ~/Downloads/$2

rosbag record -O ~/Downloads/$2/$3 \
  /tf_static \
  /$1/color/camera_info \
  /$1/color/image/compressed \
  /$1/depth/camera_info \
  /$1/depth/image/compressedDepth \
  /$1/depth_aligned/camera_info \
  /$1/depth_aligned/image/compressedDepth