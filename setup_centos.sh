#!/bin/bash

VERSION=$(cat /etc/redhat-release |sed -e 's/.*\s\([0-9]\)\..*/\1/')

yum -y update

yum -y install open-vm-tools
cd

sudo yum install -y epel-release
rpm --import https://packages.vmware.com/bitfusion/vmware.bitfusion.key


#Client Download and Install
#2021年4月14日での最新バージョン

gunzip ./bitfusion-client-centos$VERSION-3.0.1-4.x86_64.rpm.gz
yum install -y ./bitfusion-client-centos$VERSION-3.0.1-4.x86_64.rpm

#version確認
bitfusion version


#rm -fr ./bitfusion
sleep 10;sudo shutdown -h now
