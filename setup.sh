#!/bin/bash

echo -e "Please enter your sunrise time:"
	read sunrisetime

echo -e "Please enter your sunset time: "
	read sunsettime

echo -e "Please enter your day theme: "
	read daytheme


echo -e "Please enter your day icon theme: "
	read dayicontheme


echo -e "Please enter your night theme: "
	read nighttheme


echo -e "Please enter your night icon theme: "
	read nighticontheme

echo -e "Do you want to change window manager theme [y/n]: "
	read customisewm
	
	

if [ "$customisewm" = "y" ]; then
	echo -e "Please enter your day wm theme: "
		read daywmtheme
	echo -e "Please enter your night wm theme: "
		read nightwmtheme
fi
	
echo -e "Do you want to change cursor theme [y/n]: "
	read customisecursor


if [ "$customisecursor" = "y" ]; then
	echo -e "Please enter your day cursor theme: "
		read daycursortheme
	echo -e "Please enter your night cursor theme: "
		read nightcursortheme
fi

touch $HOME/.Xdbus
chmod 600 $HOME/.Xdbus
env | grep DBUS_SESSION_BUS_ADDRESS > $HOME/.Xdbus
echo 'export DBUS_SESSION_BUS_ADDRESS' >> $HOME/.Xdbus
env | grep XAUTHORITY >> $HOME/.Xdbus
echo 'export XAUTHORITY' >> $HOME/.Xdbus

echo "
sunrisetime=$sunrisetime
sunsettime=$sunsettime
daytheme=$daytheme
dayicontheme=$dayicontheme
nighttheme=$nighttheme
nighticontheme=$nighticontheme
daywmtheme=$daywmtheme
nightwmtheme=$nightwmtheme
daycursortheme=$daycursortheme
nightcursortheme=$nightcursortheme
customisewm=$customisewm
customisecursor=$customisecursor
" > $PWD/themeswitch



