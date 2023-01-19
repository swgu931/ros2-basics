# This is simple example for ros2 service 
- ref: https://docs.ros.org/en/foxy/Tutorials/Beginner-Client-Libraries/Writing-A-Simple-Py-Service-And-Client.html 

## Build
```
rosdep install -i --from-path src --rosdistro foxy -y
colcon build --packages-select py_srvcli
```

## Run
```
. install/setup.bash
ros2 run py_srvcli service
```
```
. install/setup.bash
ros2 run py_srvcli client 3 5
```
