# OpenPlanner for the simulation

![](docs/images/OpenPlannerVis.png)


## Installation

### 1. Install the dependencies:

```bash
sudo apt update
sudo apt install -y python-catkin-pkg python-rosdep ros-$ROS_DISTRO-catkin
sudo apt install -y python3-pip python3-colcon-common-extensions python3-setuptools python3-vcstool python-pip
pip3 install -U setuptools
```

### 2. Import the remaining repos:

```bash
cd xmsvv-openplanner
mkdir src/
vcs import src < openplanner.repos
```

### 3. Install ros dependencies:


#### Install dependencies:

```bash
rosdep update
sudo rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO
```

### 4. Build:

```bash
colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release
```

### 5. Sourcing

Add the to the setup bash or zsh:
source ~/xmsvv-openplanner/install/setup.zsh --extend

### Build Issues


#### Error 1
colcon build may fail due to:
CMake Error at CMakeLists.txt:89 (roslint_add_test):
  Unknown CMake command "roslint_add_test".

Solution:
in src/autoware/common/op_planner/CMakeLists.txt add roslint to
find_package(catkin REQUIRED COMPONENTS (line 7)

#### Error 2
added autoware_can_msgs to requirements
src/autoware/core_planning/op_direct_controller/CMakeLists.txt
add the catkin dependency "autoware_can_msgs"