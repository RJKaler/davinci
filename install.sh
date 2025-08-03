#!/bin/bash 

error() { echo "error" && exit 1; }

sudo apt install git make -y || error 

git clone https://github.com/leinardi/jdinstaller

pushd jdinstaller &>/dev/null || error 

 git checkout davinci &&\
make install TAGS=davinci_resolve 
