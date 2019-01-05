#!bin/bash

df -h 

echo "Is Disk OK?"
echo "At least 2GB needed"
echo "the shell will overwrite whole system and install some vital. OK? \n Press Enter $"

essential="vim-nox git terminator gimp"

echo "Installing pkgs below..."
echo $essential

sudo apt install $essential
#mkdir ~/install
#:cd install 
echo "OverWriting Setting..."

sudo sh -c " echo 'set completion-ignore-case on' >> /etc/inputrc"

git config --global user.email "p111026h@mail.kyutech.jp"
git config --global user.name "yasu80"
git config --global core.editor vim



firefox https://code.visualstudio.com/docs/?dv=linux64_deb
dpkg -i code*

cd

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get update

sudo apt-get install ros-kinetic-desktop-full

sudo rosdep init
rosdep update


