# How to install and test quickly about setting up properly

- ref: https://index.ros.org/doc/ros2/Installation/Dashing/Linux-Development-Setup/

## Quick Start

1) ROS2 Install from source code
$ source ./env-setup-ros2.sh

2) Environment Setup 
$ source ./install-ros2.sh


## Basice Test for ensuring proper setup

Terminal 1)
$. ~/ros2_dashing/install/local_setup.bash
$ ros2 run demo_nodes_cpp talker

Terminal 2)
$. ~/ros2_dashing/install/local_setup.bash
$ ros2 run demo_nodes_py listener
