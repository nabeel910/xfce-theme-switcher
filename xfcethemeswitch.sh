#! /bin/bash

source /home/nabeel/Apps/xfce-theme-switcher/themeswitch
date=$(date +%H%M)

	echo "<img>/home/nabeel/Apps/xfce-theme-switcher/xts.svg</img>"
	
function day_theme {
	xfconf-query -c xsettings -p /Net/ThemeName -s $daytheme
	xfconf-query -c xsettings -p /Net/IconThemeName -s $dayicontheme	
}

function night_theme {
	xfconf-query -c xsettings -p /Net/ThemeName -s $nighttheme
	xfconf-query -c xsettings -p /Net/IconThemeName -s $nighticontheme	
}


if [[ $date -ge $sunrise ]] && [[ $date -le $sunsetime ]];

then
	day_theme
else
	night_theme
fi


