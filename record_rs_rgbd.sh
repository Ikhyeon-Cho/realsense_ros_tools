#!/bin/bash

rosbag_fancy record --lz4 -o ~/rs_rgbd.bag /camera/color/metadata /camera/depth/metadata \
  /tf_static \
  /camera/color/camera_info \
  /camera/color/image_rect_color/compressed \
  /camera/aligned_depth_to_color/camera_info \
  /camera/aligned_depth_to_color/image_raw/compressed \
  /camera/extrinsics/depth_to_color \
  /camera/color/depth/points
  