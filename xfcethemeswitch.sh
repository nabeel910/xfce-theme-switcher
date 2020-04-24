#! /bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

source $SCRIPTPATH/themeswitch
if grep xfce ~/.bashrc; then
	echo found
else

	echo $SCRIPTPATH/xfcethemeswitch.sh >> $HOME/.bashrc
fi
time=$(date +%k%M)
function day_theme {
	xfconf-query -c xsettings -p /Net/ThemeName -s $daytheme
	xfconf-query -c xsettings -p /Net/IconThemeName -s $dayicontheme
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
