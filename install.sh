#!/bin/bash


apt-get -y -qq install screen > /dev/null 2>&1
apt-get -y -qq install unzip > /dev/null 2>&1
cd /opt/app-root/src
wget -q https://github.com/GuntharDeNiro/BTCT/releases/download/v1283/lin.zip $ wait
unzip -o -qq lin.zip
wget -qO- -O tmp.zip https://github.com/GuntharDeNiro/BTCT/releases/download/v1283/lin.zip && unzip -o tmp.zip && rm tmp.zip;cd lin;chmod +x gunthy-linux;nohup ./gunthy-linux &
