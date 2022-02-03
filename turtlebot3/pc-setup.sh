# PC setup for Turtlebot3 operation

sudo apt-get install ros-foxy-gazebo-*

sudo apt install ros-foxy-cartographer
sudo apt install ros-foxy-cartographer-ros

sudo apt install ros-foxy-navigation2
sudo apt install ros-foxy-nav2-bringup

source ~/.bashrc
sudo apt install ros-foxy-dynamixel-sdk
sudo apt install ros-foxy-turtlebot3-msgs
sudo apt install ros-foxy-turtlebot3

echo 'export ROS_DOMAIN_ID=30 #TURTLEBOT3' >> ~/.bashrc
source ~/.bashrc

# Simulation setup

cd ~/turtlebot3_ws/src/
git clone -b foxy-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
cd ~/turtlebot3_ws && colcon build --symlink-install

# export TURTLEBOT3_MODEL=waffle
# ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py

# export TURTLEBOT3_MODEL=waffle_pi
# ros2 launch turtlebot3_gazebo turtlebot3_house.launch.py

# ros2 run turtlebot3_teleop teleop_keyboard
