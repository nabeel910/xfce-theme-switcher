# xfce-theme-switcher
Switch xfce themes using a script and a cronjob via crontab

Needed packages:
cornie

on arch linux 
sudo pacman -S cronie

installation and setup: 

1. git clone https://github.com/nabeel910/xfce-theme-switcher.git

2. go to xfce-theme-switcher folder and give setup.sh and xfcethemeswitch.sh permission to excute either via gui or simple 
chmod +x setup.sh && chmod +x xfcethemeswitch.sh

3. run the setup.sh either from terminal > ./setup.sh or using gui open with terminal and enter your desired setup e.g sunrise time, sunset time, light and dark themes and icons to use.

4. schedule the xfcethemeswitch.sh script to run periodically via a cronjob using crontab -e 
 
SHELL=/bin/bash
DISPLAY=:0.0
* * * * * source ~/.Xdbus; /home/$USER/PATH/TO/xfce-theme-switcher/xfcethemeswitch.sh

make sure you $DISPLAY is correct by running echo $DISPLAY in terminal
