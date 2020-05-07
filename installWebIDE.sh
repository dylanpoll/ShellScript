#!/bin/bash
cd
wget https://nodejs.org/dist/v11.15.0/node-v11.15.0-linux-armv6l.tar.xz
tar -xvf node-v11.15.0-linux-armv6l.tar.gz.tar.xz
cd node-v11.15.0-linux-armv6l
sudo cp -R * /usr/local/
git clone git://github.com/adafruit/Adafruit-WebIDE.git
cd Adafruit-WebIDE
mkdir tmp
npm config set tmp tmp
npm install
editor config/config.js
echo "to change ownership of the directory of the webIDE use this.(its imortant, the webIDE will run when deployed under your credentials... a node bot with root privledges is scary."
echo "sudo chown -r 755 username:directory"
echo "if you don't know what the 755 is for, please read about it.. you can set this up different ways."
echo "to run the server as a background process type: sudo nohup node server.js &"
echo "to run it in this terminal type: sudo node server.js"
echo "the directory where you will want to run the command will be"
DIRECTORY=$(pwd)
echo $DIRECTORY
