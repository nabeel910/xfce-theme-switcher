#! /bin/bash

source /home/nabeel/Apps/xfce-theme-switcher/themeswitch
time=$(date +%k%M)

	echo "<img>/home/nabeel/Apps/xfce-theme-switcher/xts.svg</img>"
	
function day_theme {
	xfconf-query -c xsettings -p /Net/ThemeName -s $daytheme
	xfconf-query -c xsettings -p /Net/IconThemeName -s $dayicontheme
	if [[ "$customisewm" == "y" ]]	;then
		xfconf-query -c xfwm4 -p /general/theme -s $daywmtheme
	fi
}

function night_theme {
	xfconf-query -c xsettings -p /Net/ThemeName -s $nighttheme
	xfconf-query -c xsettings -p /Net/IconThemeName -s $nighticontheme
	if [[ "$customisewm" == "y" ]]	;then
		xfconf-query -c xfwm4 -p /general/theme -s $nightwmtheme
	fi	
}

if [[ "$time" -ge $sunrisetime ]] && [[ "$time" -le $sunsettime ]] ;then
	day_theme
else
	night_theme
fi

echo "<click>/home/nabeel/Apps/xfce-theme-switcher/xfcethemeswitch.sh</click>"
