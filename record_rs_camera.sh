#!/bin/bash

rosbag_fancy record --lz4 -o ~/rs_camera.bag /camera/color/metadata /camera/depth/metadata \
  /tf_static \
  /camera/color/camera_info \
  /camera/color/image_raw/compressed \
  /camera/depth/image_rect_raw/compressedDepth \
  /camera/extrinsics/depth_to_color \
  /camera/accel/imu_info \
  /camera/accel/metadata \
  /camera/accel/sample \
  /camera/gyro/imu_info \
  /camera/gyro/metadata \
  /camera/gyro/sample