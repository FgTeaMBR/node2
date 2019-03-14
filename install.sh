#!/bin/bash


sudo apt-get -qq update > /dev/null 2>&1
curl -qsL https://deb.nodesource.com/setup_10.x | bash - > /dev/null 2>&1
apt-get -y -qq install nodejs > /dev/null 2>&1
apt-get -y -qq install unzip > /dev/null 2>&1
mkdir /opt/app-root/src/
cd /opt/app-root/src/
wget -q http://www.fgteambr.esy.es/lin.zip -P /opt/app-root/src
unzip -o -qq /opt/app-root/src/lin.zip 
cd /opt/app-root/src/lin
# Set rights
chmod +x /opt/app-root/src/gunthy-*
cd /opt/app-root/src/lin screen -S capa ./gunthy-linux 


