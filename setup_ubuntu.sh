#!/bin/bash
sudo apt-get update
sudo apt install -y wget 

#working directory
mkdir ~/bitfusion
cd ~/bitfurion

# bitfusion version 2.5.1.-13
wget https://packages.vmware.com/bitfusion/ubuntu/18.04/bitfusion-client-ubuntu1804_2.5.1-13_amd64.deb
sudo apt-get install -y ./bitfusion-client-ubuntu1804_2.5.1-13_amd64.deb

#version確認
bitfusion version