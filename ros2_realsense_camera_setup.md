
# Intel Realsense Dxxx Install
- ref: https://github.com/IntelRealSense/librealsense/blob/master/doc/distribution_linux.md

```
sudo apt-get install ros-dashing-librealsense2

sudo apt-get install -y libssl-dev libusb-1.0-0-dev pkg-config libgtk-3-dev
sudo apt-get install -y libglfw3-dev libgl1-mesa-dev libglu1-mesa-dev
```

# fetch code
```
mkdir -p ~/ros2_ws/src
cd ~/ros2_ws/src
git clone https://github.com/intel/ros2_intel_realsense.git
cd ros2_intel_realsense
```
# build
```
source /opt/ros/dashing/setup.bash
cd ~/ros2_ws
colcon build --symlink-install
```

```
rs-enumerate-devices | grep Serial
```
- Change the corresponding yaml file with the specific serial number, e.g. for d435.yaml in line3:
```
serial_no: # d435
```
```
source /opt/ros/dashing/setup.bash
source ~/ros2_ws/install/local_setup.bash
```

## using ros2 run
cd ~/ros2_ws
ros2 run realsense_node realsense_node __params:=`ros2 pkg prefix realsense_examples`/share/realsense_ros/config/d435.yaml __ns:=/d435
## using ros2 launch
ros2 launch realsense_examples rs_camera.launch.py



## reference command
```
ros2 param list
ros2 param get <node_name> color0.enabled
ros2 param set <node_name> color0.enabled true
ros2 param set <node_name> align_depth true
ros2 param set <node_name> enable_pointcloud true
```

