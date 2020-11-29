#!/bin/bash

export containerId=$(docker ps -l -q)
xhost +local:`docker inspect --format='{{ .Config.Hostname }}' $containerId`
echo $containerId

# export containerName='realsense-node'
# xhost +local:`docker inspect --format='{{ .Config.Hostname }}' $containerName`
# echo $containerName
