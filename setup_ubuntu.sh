#!/bin/bash

#distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
distribution=$(. /etc/os-release;echo $VERSION_ID)

sudo apt-get update
sudo apt install -y wget open-vm-tools

#working directory
mkdir ~/bitfusion
cd ~/bitfusion

#bitfusion version 4.0.0-13 20210814
wget https://packages.vmware.com/bitfusion/ubuntu/$distribution/bitfusion-client-ubuntu1804_4.0.0-13_amd64.deb
sudo apt-get install -y ./bitfusion-client-ubuntu1804_4.0.0-13_amd64.deb


sudo usermod -aG bitfusion $USER

#version確認
bitfusion version

#不要ファイル削除
cd
rm -fr ./bitfusion
sleep 10;sudo shutdown -h now
