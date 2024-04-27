#!/bin/bash

# Create the directory if it doesn't exist
mkdir -p ~/Downloads/$2

rosbag record -O ~/Downloads/$2/$3 \
  /tf_static \
  /$1/color/camera_info \
  /$1/depth/camera_info \
  /$1/aligned_depth_to_color/camera_info \
  /$1/color/image_raw/compressed \
  /$1/depth/image_rect_raw/compressedDepth \
  /$1/aligned_depth_to_color/image_raw/compressedDepth \
  /$1/accel/imu_info \
  /$1/accel/metadata \
  /$1/accel/sample \
  /$1/gyro/imu_info \
  /$1/gyro/metadata \
  /$1/gyro/sample