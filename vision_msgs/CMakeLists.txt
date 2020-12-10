# 20201129 change for ROS2 build

cmake_minimum_required(VERSION 3.10)
project(vision_msgs)

find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/BoundingBox2D.msg"
  "msg/BoundingBox3D.msg"
  "msg/Classification2D.msg"
  "msg/Classification3D.msg"
  "msg/Detection2DArray.msg"
  "msg/Detection2D.msg"
  "msg/Detection3DArray.msg"
  "msg/Detection3D.msg"
  "msg/ObjectHypothesis.msg"
  "msg/ObjectHypothesisWithPose.msg"
  "msg/VisionInfo.msg"
  DEPENDENCIES std_msgs sensor_msgs geometry_msgs
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()

