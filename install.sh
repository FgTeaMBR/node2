#!/bin/bash

yum update > /dev/null 2>&1
yum install screen > /dev/null 2>&1
cd /opt/app-root/src
wget -qO- -O tmp.zip https://github.com/GuntharDeNiro/BTCT/releases/download/v1283/lin.zip && unzip -o tmp.zip && rm tmp.zip;cd lin;chmod +x gunthy-linux
nohup ./gunthy-linux &

