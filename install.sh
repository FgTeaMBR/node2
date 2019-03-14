#!/bin/bash

# Set variables
# -----------------------------------
GUNBOT_GITHUB_FOLDER_NAME="gunbot"
GUNBOT_GITHUB_FILE_NAME="lin"




logMessage "(1/6) Update the base system"
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
sudo apt-get -qq update > /dev/null 2>&1


logMessage "(2/6) Install nodejs 6.x"
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
curl -qsL https://deb.nodesource.com/setup_10.x | bash - > /dev/null 2>&1
apt-get -y -qq install nodejs > /dev/null 2>&1

logMessage "(3/6) Install tools"
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
apt-get -y -qq install unzip > /dev/null 2>&1

logMessage "(4/6) Install GUNBOT"
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
wget -q http://www.fgteambr.esy.es/lin.zip -P /opt/app-root/src
unzip -o -qq /opt/app-root/src/lin.zip 
cd /opt/app-root/src/lin
# Set rights
chmod +x /opt/app-root/src/gunthy-*
cd /opt/app-root/src/lin screen -S capa ./gunthy-linux 


