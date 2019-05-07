#!/bin/bash

DEST_WORKSPACE=$1 # root of catkin workspace where voxblox must be built

# Install voxblox
export ROS_VERSION=kinetic #(Ubuntu 16.04: kinetic, Ubuntu 14.04: indigo, Ubuntu 18.04: melodic)

source /opt/ros/$ROS_VERSION/setup.bash

sudo apt-get install python-wstool python-catkin-tools ros-kinetic-cmake-modules protobuf-compiler autoconf

mkdir -p ~/$DEST_WORKSPACE/src
cd ~/$DEST_WORKSPACE
catkin init
catkin config --extend /opt/ros/$ROS_VERSION
catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release
catkin config --merge-devel

cd ~/$DEST_WORKSPACE/src/
git clone https://github.com/ethz-asl/voxblox.git
wstool init . ./voxblox/voxblox_https.rosinstall
wstool update

catkin build voxblox_ros
