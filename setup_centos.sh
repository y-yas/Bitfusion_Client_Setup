#!/bin/bash

VERSION=$(cat /etc/redhat-release |sed -e 's/.*\s\([0-9]\)\..*/\1/')

sudo yum -y update

sudo yum -y install open-vm-tools

#working directory
mkdir ~/bitfusion
cd ~/bitfusion

sudo yum install -y epel-release
sudo rpm --import https://packages.vmware.com/bitfusion/vmware.bitfusion.key


#Client Download and Install
#2021年8月12日での最新バージョン
wget https://packages.vmware.com/bitfusion/centos/$VERSION/bitfusion-client-centos8-4.0.0-13.x86_64.rpm



#gunzip ./bitfusion-client-centos$VERSION-3.0.1-4.x86_64.rpm.gz
sudo yum install -y ./bitfusion-client-$VERSION-4.0.0-13.x86_64.rpm

#version確認
bitfusion version


#rm -fr ./bitfusion
sleep 10;sudo shutdown -h now
