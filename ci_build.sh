#!/bin/bash
sudo rm -r install/ build/
source ~/.bashrc
bash -c "bash && colcon build"