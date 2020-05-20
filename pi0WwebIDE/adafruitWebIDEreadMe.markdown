 the pi zero w runs on armv6l , unfortunately.... node.js new versions don't have a release for that.. and the webIDE curl will fail if you use the one on the site. you have to install a tarball and manually setup the webIDE to a extent.

well, its a "quick fix", and I am sure there are bugs with doing things in this ultra lazy fashion but.... I made a shell script that does this....you can just do it line by line tho.

quick notes:

if you only want to install node 11.15.0, just do the above except remove the adafruit web ide portions, id suggest making a directory that you plan on using to run nodes, and install npm in that...

might want to change the ports or other config stuff if your doing this, thats why i left the edit config line in there.... i have been suggested to not use sudo so casually in shell scripts, but if you don't run node here as sudo you wont have permissions, you can grant yourself those with chmod... but im lazy.

most current version of node supported for armv6 is 11.15.0 https://nodejs.org/dist/v11.15.0/

I did post this as a script on my github, so if you just want to run it as it is... just run this BUT MAKE SURE TO READ the link because you shouldn't trust some random stranger. linke to git page https://github.com/dylanpoll/ShellScript/blob/master/installWebIDE.sh

`wget -O - https://github.com/dylanpoll/ShellScript/raw/master/installWebIDE.sh | bash`

credit to:
https://raspberry-valley.azurewebsites.net/Adafruit-webIDE/
https://warlord0blog.wordpress.com/2018/06/27/node-js-v8-on-raspberry-pi-zero/
https://learn.adafruit.com/webide

thank you guys, got me on track with this, i did make some changes tho.

(in the future I'll go through this more step by step and see if i can do a manual install with better optimizations for the limited memory and processing power on the zero)

IF YOU SSH IN: keep in mind that if you don't use nohup and end with the "&" symbol the process will end when you disconnect. there are a few ways around it, but nohup is easy. press any key after that and terminal will resume like normal. you can do this if your already running it and want to exit your SSH steam.

ctrl+z
bg
disown
it pauses the process, sends it to the background and disowns it so it stays running.
