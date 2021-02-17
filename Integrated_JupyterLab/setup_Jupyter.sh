#!/bin/bash

sudo apt-get update

sudo apt install -y python3-pip
sudo pip3 install jupyterlab
ipython kernel install --prefix ~/tmp


 mv ~/tmp/share/jupyter/kernels/python3/ ~/tmp/share/jupyter/kernels/python3/bitfusion-basic
 cat  ./Bitfusion_> kernel.json
