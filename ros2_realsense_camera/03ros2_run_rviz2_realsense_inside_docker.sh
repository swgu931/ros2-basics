#!/bin/bash
# inside docker during ros2 run realsense camera

mkdir /tmp/XDG_RUNTIME_DIR
export XDG_RUNTIME_DIR=/tmp/XDG_RUNTIME_DIR
export RUNLEVEL=3
ros2 run rviz2 rviz2 -d realsense_ros2_camera/rviz/ros2.rviz