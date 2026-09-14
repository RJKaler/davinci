#!/bin/bash 


error() { echo "error" && exit 1; }

#trial and error code for missing packages.... 
sudo apt-get update
sudo apt-get install fakeroot xorriso ocl-icd-opencl-dev libglu1-mesa libssl3 qtwayland5 -y || error

sudo apt install git make -y || error 

git clone https://github.com/leinardi/jdinstaller

pushd jdinstaller &>/dev/null || error 

 git checkout davinci &&\
make install TAGS=davinci_resolve 
