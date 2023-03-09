# Basic CLI Command

```
Install the turtlesim package for your ROS 2 distro:
sudo apt install ros-<distro>-turtlesim
```

- Check that the package installed:
```
ros2 pkg executables turtlesim
---
turtlesim draw_square
turtlesim mimic
turtlesim turtle_teleop_key
turtlesim turtlesim_node
---
```
```
ros2 run turtlesim turtlesim_node
```
```
ros2 node list
ros2 topic list
ros2 service list
ros2 action list
```
```
sudo apt update

sudo apt install ros-<distro>-rqt-*

sudo apt update
sudo apt install ros-<distro>-turtlesim

ros2 pkg executables turtlesim
```
```
ros2 run turtlesim turtlesim_node
ros2 run turtlesim turtle_teleop_key

ros2 node list
ros2 topic list
ros2 service list
ros2 action list

rqt --force-discover
```

- Remapping
```
ros2 run turtlesim turtle_teleop_key --ros-args --remap turtle1/cmd_vel:=turtle2/cmd_vel
ros2 run turtlesim turtlesim_node --ros-args --remap __node:=my_turtle
```
```
ros2 node info <node_name>
ros2 node info /my_turtle
```
```
ros2 topic list -t
ros2 topic echo <topic_name>
ros2 topic echo /turtle1/cmd_vel
ros2 topic info /turtle1/cmd_vel


ros2 topic pub <topic_name> <msg_type> '<args>'
ros2 topic pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 1.8}}"
ros2 topic pub --rate 1 /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 1.8}}"

ros2 topic hz /turtle1/pose
```

```
ros2 service list
ros2 service type <service_name>
ros2 service type /clear

ros2 service find <type_name>
ros2 service find std_srvs/srv/Empty
```
```
ros2 interface show <type_name>.srv
ros2 interface show std_srvs/srv/Empty.srv
```

```
ros2 service call <service_name> <service_type> <arguments>
ros2 service call /clear std_srvs/srv/Empty
ros2 service call /spawn turtlesim/srv/Spawn "{x: 2, y: 2, theta: 0.2, name: ''}"
```

```
ros2 param dump <node_name>
ros2 param dump /turtlesim
```
```
ros2 run <package_name> <executable_name> --ros-args --params-file <file_name>
ros2 run turtlesim turtlesim_node --ros-args --params-file ./turtlesim.yaml
```
```
ros2 node info /turtlesim
ros2 node info /teleop_turtle
ros2 action list
ros2 action info /turtle1/rotate_absolute
ros2 interface show turtlesim/action/RotateAbsolute.action
ros2 action send_goal /turtle1/rotate_absolute turtlesim/action/RotateAbsolute "{theta: 1.57}"
```

```
mkdir launch
cd launch
ros2 launch turtlesim_mimic_launch.py
ros2 topic pub -r 1 /turtlesim1/turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -1.8}}"

ros2 launch <package_name> <launch_file_name>
```

```
ros2 bag record <topic_name>
ros2 bag record /turtle1/cmd_vel
ros2 bag record -o subset /turtle1/cmd_vel /turtle1/pose
ros2 bag info <bag_file_name>

ros2 bag play subset
```

```
ros2 multicast receive
ros2 mutlicast send

ros2 pkg list
ros2 pkg prefix turtlesim
ros2 pkg xml turtlesim

ros2 interface list


ros2 doctor hello
ros2 doctor -r 
ros2 doctor -rf
ros2 doctor -iw

ros2 env list -a
```
