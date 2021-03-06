#! /bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

source $SCRIPTPATH/themeswitch

time=$(date +%k%M)
	echo "<img>$SCRIPTPATH/xts.svg</img>"
function day_theme {
	xfconf-query -c xsettings -p /Net/ThemeName -s $daytheme
	xfconf-query -c xsettings -p /Net/IconThemeName -s $dayicontheme
	xfconf-query -c xfce4-panel -p /panels/dark-mode -s true
	if [[ "$customisewm" == "y" ]]	;then
		xfconf-query -c xfwm4 -p /general/theme -s $daywmtheme
	fi
	if [[ "$customisecursor" == "y" ]]	;then
		xfconf-query -c xsettings -p /Gtk/CursorThemeName -s $daycursortheme
	fi
}

function night_theme {
	xfconf-query -c xsettings -p /Net/ThemeName -s $nighttheme
	xfconf-query -c xsettings -p /Net/IconThemeName -s $nighticontheme
	xfconf-query -c xfce4-panel -p /panels/dark-mode -s false
	if [[ "$customisewm" == "y" ]]	;then
		xfconf-query -c xfwm4 -p /general/theme -s $nightwmtheme
	fi	
	if [[ "$customisecursor" == "y" ]]	;then
		xfconf-query -c xsettings -p /Gtk/CursorThemeName -s $nightcursortheme
	fi
}

if [[ "$time" -ge $sunrisetime ]] && [[ "$time" -le $sunsettime ]] ;then
	day_theme
else
	night_theme
fi
echo "<click>$SCRIPTPATH/xfcethemeswitch.sh</click>"

