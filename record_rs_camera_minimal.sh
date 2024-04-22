#!/bin/bash

# Create the directory if it doesn't exist
mkdir -p ~/Downloads/$2

rosbag record --lz4 -O ~/Downloads/$2/$1 /camera/color/metadata /camera/depth/metadata \
  /tf_static \
  /camera/color/camera_info \
  /camera/aligned_depth_to_color/camera_info \
  /camera/color/image_raw/compressed \
  /camera/aligned_depth_to_color/image_raw/compressedDepth \
  /camera/extrinsics/depth_to_color