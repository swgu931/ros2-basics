# ros2-basics
This is to help engineers who start robot software using ros2
- ref: https://index.ros.org/doc/ros2/Tutorials/


## Quick Start

1) ROS2 Install 
```
go to ./howto
$ source ./install-ros2.sh
```
2) Environment Setup 
```
$ source ./env-setup-ros2.sh
```

## Basice Test for ensuring proper setup

Terminal 1)
```
$. ~/ros2_dashing/install/local_setup.bash
$ ros2 run demo_nodes_cpp talker
```
Terminal 2)
```
$. ~/ros2_dashing/install/local_setup.bash
$ ros2 run demo_nodes_py listener
```

