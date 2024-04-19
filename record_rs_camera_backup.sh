#!/bin/bash

# Create the directory if it doesn't exist
mkdir -p ~/Downloads/$2

rosbag record --lz4 -o ~/Downloads/$2/$1.bag /camera/color/metadata /camera/depth/metadata \
  /tf_static \
  /camera/color/camera_info \
  /camera/depth/camera_info \
  /camera/color/image_raw/compressed \
  /camera/depth/image_rect_raw/compressedDepth \
  /camera/aligned_depth_to_color/image_raw/compressedDepth \
  /camera/extrinsics/depth_to_color \
  /camera/accel/imu_info \
  /camera/accel/metadata \
  /camera/accel/sample \
  /camera/gyro/imu_info \
  /camera/gyro/metadata \
  /camera/gyro/sample