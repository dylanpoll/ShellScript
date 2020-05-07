
I am posting this here incase someone else is trying to do this... and I am still learning github X/

well, its a "quick fix", and I am sure there are bugs with doing things in this ultra lazy fashion but....
I made a shell script that does this, you can just do it line by line tho.

> #cd
> #wget https://nodejs.org/dist/v8.11.3/node-v8.11.3-linux-armv6l.tar.xz
> #tar -xvf node-v8.11.3-linux-armv6l.tar.xz
> #cd node-v8.11.3-linux-armv6l
> #sudo cp -R * /usr/local/
> #git clone git://github.com/adafruit/Adafruit-WebIDE.git
> #cd Adafruit-WebIDE
> #mkdir tmp
> #npm config set tmp tmp
> #npm install
> #editor config/config.js
>#echo "starting the webIDE"
>#DIRECTORY=$(pwd)
> #sudo nohup node server.js
>#echo "the webIDE is running as a background process... change this shell script by removing the nohup from the -  sudo nohup node server.js  - field to run it in your current terminal."
>#echo " you can start the webIDE by typing the before mentioned field "
>#echo "the directory where you will want to run the command will be" 
>#echo $DIRECTORY

quick notes:
might want to change the ports or other config stuff if your doing this, thats why i left the edit config line in there....
i have been suggested  to not use sudo so casually in shell scripts, but if you don't run node here as sudo you wont have permissions, you can grant yourself those with chmod... but im lazy.
 
 I tried installing the newer node packages like the arm7l.tar.xz, but it failed

I did post this as a script on my github, so if you just want to run it as it is... just run this BUT MAKE SURE TO READ the link because you shouldn't trust some random stranger. linke to git page 
https://github.com/dylanpoll/ShellScript/blob/master/installWebIDE.sh

`wget -O - https://github.com/dylanpoll/ShellScript/raw/master/installWebIDE.sh | bash`

credit to:
https://raspberry-valley.azurewebsites.net/Adafruit-webIDE/
https://warlord0blog.wordpress.com/2018/06/27/node-js-v8-on-raspberry-pi-zero/
(and you guys who run this project)

thank you guys.

(in the future I'll go through this more step by step and see if i can do a manual install with better optimizations for the limited memory and processing power on the zero)
