#!/usr/bin/env bash

export ROS_DISTRO=noetic

mkdir -p /tmp/v2x_if_ros_msg/catkin_workspace
mkdir -p /tmp/v2x_if_ros_msg/catkin_workspace/{src,build,devel,logs}
cd /tmp/v2x_if_ros_msg/catkin_workspace

DESTDIR=/tmp/v2x_if_ros_msg/build catkin init
source /opt/ros/noetic/setup.bash
cd /tmp/v2x_if_ros_msg/catkin_workspace
cp -r /tmp/v2x_if_ros_msg/* /tmp/v2x_if_ros_msg/catkin_workspace/src
rm /tmp/v2x_if_ros_msg/catkin_workspace/src/catkin_workspace -rf
catkin build v2x_if_ros_msgs

mkdir -p /tmp/v2x_if_ros_msg/build
cp -r /tmp/v2x_if_ros_msg/catkin_workspace /tmp/v2x_if_ros_msg/build
