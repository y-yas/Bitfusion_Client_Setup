#!/bin/bash

sudo apt-get update

sudo apt install -y python3-pip
sudo pip3 install jupyterlab
ipython kernel install --prefix ~/tmp


 cd ~/tmp/share/jupyter/kernels/
 mv python3/ bitfusion-basic
 cat  > kernel.json
