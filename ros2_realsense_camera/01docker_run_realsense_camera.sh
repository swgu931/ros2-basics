#!/bin/bash

#docker run --rm -it  --privileged --env DISPLAY=$DISPLAY  --env QT_X11_NO_MITSHM=1  --volume /tmp/.X11-unix:/tmp/.X11-unix:rw --name simulator  cart.lge.com/cloud-robotics/ros2-unity-simulator:0.1 /bin/bash
export ROS_DOMAIN_ID=199
echo $ROS_DOMAIN_ID

export ROBOT_NAME=r1
echo $ROBOT_NAME

export XDG_RUNTIME_DIR=/tmp/XDG_RUNTIME_DIR
export RUNLEVEL=3

docker run -it --rm --privileged \
--net host \
--cap-add=ALL \
--name realsense-node \
--hostname realsense-node \
-v /dev:/dev:rw \
--device /dev/video0:/dev/video0:rwm \
--device /dev/video1:/dev/video1:rwm \
-v /tmp/.X11-unix:/tmp/.X11-unix:rw \
-e DISPLAY=$DISPLAY \
-e QT_X11_NO_MITSHM=1 \
-e ROS_DOMAIN_ID=$ROS_DOMAIN_ID \
-e ROBOT_NAME=$ROBOT_NAME \
swgu931/ros2:dashing-r4 \
/bin/bash
