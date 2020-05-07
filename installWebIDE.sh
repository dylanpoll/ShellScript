#cd
#wget https://nodejs.org/dist/v8.11.3/node-v8.11.3-linux-armv6l.tar.xz
#tar -xvf node-v8.11.3-linux-armv6l.tar.xz
#cd node-v8.11.3-linux-armv6l
#sudo cp -R * /usr/local/
#git clone git://github.com/adafruit/Adafruit-WebIDE.git
#cd Adafruit-WebIDE
#mkdir tmp
#npm config set tmp tmp
#npm install
#editor config/config.js
#echo "starting the webIDE"
#DIRECTORY=$(pwd)
#sudo nohup node server.js
#echo "the webIDE is running as a background process... change this shell script by removing the nohup from the -  sudo nohup node server.js  - field to run it in your current terminal."
#echo " you can start the webIDE by typing the before mentioned field "
#echo "the directory where you will want to run the command will be" 
#echo $DIRECTORY