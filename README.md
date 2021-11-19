# OpenPlanner for the simulation

This is the repository to setup OpenPlanner. The whole system on our stable branch "openplanner.1.15.uas-augsburg" is tested using the ros-scenario-based-testing framework from:
https://github.com/arminstr/ros_scenario_simulation

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
cd planner_ws
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
source ~/planner_ws/install/setup.zsh --extend

