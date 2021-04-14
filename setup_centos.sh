#!/bin/bash

#distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
#distribution=$(. /etc/os-release;echo $VERSION_ID)
VERSION=$(. /etc/redhat-release |sed -e 's/.*\s\([0-9]\)\..*/\1/')
#sudo apt-get update
yum -y update

#sudo apt install -y wget open-vm-tools
yum -y install open-vm-tools

#working directory
#mkdir ~/bitfusion
#cd ~/bitfusion
cd

sudo yum install -y epel-release
rpm --import https://packages.vmware.com/bitfusion/vmware.bitfusion.key

#bitfusion version 2.5.1.-13
#wget https://packages.vmware.com/bitfusion/ubuntu/$distribution/bitfusion-client-ubuntu1804_2.5.1-13_amd64.deb
#sudo apt-get install -y ./bitfusion-client-ubuntu1804_2.5.1-13_amd64.deb

yum install -y ./bitfusion-client-centos$VERSION-3.0.1-4.x86_64.rpm

#version確認
bitfusion version

#不要ファイル削除
cd
#rm -fr ./bitfusion
sleep 10;sudo shutdown -h now
