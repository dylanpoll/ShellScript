
I am posting this here incase someone else is trying to do this... and I am still learning github X/

well, its a "quick fix", and I am sure there are bugs with doing things in this ultra lazy fashion but....
I made a shell script that does this, you can just do it line by line tho.

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
https://learn.adafruit.com/webide
(and you guys who run this project)

thank you guys.

(in the future I'll go through this more step by step and see if i can do a manual install with better optimizations for the limited memory and processing power on the zero)
