# Install kalibr 
export ROS_VERSION=kinetic #(Ubuntu 16.04: kinetic, Ubuntu 14.04: indigo, Ubuntu 18.04: melodic)
export KALIBR_WS=~/kalibr_ws

# Install the build and run dependencies
sudo apt-get install python-setuptools python-rosinstall ipython libeigen3-dev libboost-all-dev doxygen libopencv-dev ros-$ROS_VERSION-vision-opencv ros-$ROS_VERSION-image-transport-plugins ros-$ROS_VERSION-cmake-modules python-software-properties software-properties-common libpoco-dev python-matplotlib python-scipy python-git python-pip ipython libtbb-dev libblas-dev liblapack-dev python-catkin-tools libv4l-dev 
sudo pip install python-igraph --upgrade

# Create a catkin workspace
mkdir -p $KALIBR_WS/src 
cd $KALIBR_WS 
source /opt/ros/$ROS_VERSION/setup.bash 
catkin init 
catkin config --extend /opt/ros/$ROS_VERSION 
catkin config --merge-devel # Necessary for catkin_tools >= 0.4. catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release

cd $KALIBR_WS/src 
git clone https://github.com/ethz-asl/Kalibr.git

cd $KALIBR_WS 
catkin build -DCMAKE_BUILD_TYPE=Release -j4
