# setup Intel Realsense camera in ROS2
- Assuming docker environment

## prerequisite

please install realsense camera with reference below

- ref : https://github.com/IntelRealSense/realsense-ros
- ref : https://github.com/IntelRealSense/librealsense/blob/master/doc/distribution_linux.md
- ref : https://index.ros.org/r/ros2_intel_realsense/#dashing

## step 1:

source ./01docker_run_realsense_camera.sh

## step 2:
source ./02setup_realsense_camera_gui.sh

## step 3: inside docker in running
source ./03ros2_run_rviz2_realsense_inside_docker.sh

