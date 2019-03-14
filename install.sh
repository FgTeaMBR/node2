#!/bin/bash

# Set variables
# -----------------------------------
GUNBOT_GITHUB_FOLDER_NAME="Gunbot v12.8.3 with GUNTHY wallet"
GUNBOT_GITHUB_FILE_NAME="lin"


# Set functions
# -----------------------------------
logMessage () {
  echo " $1"
  echo " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
}


echo ""
echo " ============================================================"
echo "                    GUNBOT 3.3.2 SETUP started"
echo ""
echo "                This will take a few seconds"
echo ""
echo " ============================================================"
echo ""

logMessage "(1/6) Update the base system"
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
apt-get -qq update > /dev/null 2>&1


logMessage "(2/6) Install nodejs 6.x"
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
curl -qsL https://deb.nodesource.com/setup_10.x | bash - > /dev/null 2>&1
apt-get -y -qq install nodejs > /dev/null 2>&1

logMessage "(3/6) Install tools"
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
apt-get -y -qq install unzip > /dev/null 2>&1

logMessage "(4/6) Install GUNBOT"
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
wget -q https://github.com/GuntharDeNiro/BTCT/releases/download/${GUNBOT_GITHUB_FOLDER_NAME}/${GUNBOT_GITHUB_FILE_NAME}.zip -P /opt/
unzip -o -qq /opt/${GUNBOT_GITHUB_FILE_NAME}.zip -d /opt/unzip-tmp

# create folder for the current version.
mkdir /opt/${GUNBOT_GITHUB_FILE_NAME} -p

# Copy only the executables.
cp /opt/unzip-tmp/gunthy-* /opt/${GUNBOT_GITHUB_FILE_NAME}

# creates a symbolic link to the gunbot folder.
rm /opt/gunbot > /dev/null 2>&1
ln -s /opt/${GUNBOT_GITHUB_FILE_NAME} /opt/gunbot

# Cleanup
rm /opt/${GUNBOT_GITHUB_FILE_NAME}.zip
rm -R /opt/unzip-tmp

# Set rights
chmod +x /opt/gunbot/gunthy-*

logMessage "(6/6) Init generator"
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Create folder for yeoman.
chmod g+rwx /root
chmod g+rwx /opt/gunbot
