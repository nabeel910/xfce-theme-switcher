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

echo "
sunrisetime=$sunrisetime
sunsettime=$sunsettime
daytheme=$daytheme
dayicontheme=$dayicontheme
nighttheme=$nighttheme
nighticontheme=$nighticontheme" > /home/nabeel/Apps/xfce-theme-switcher/themeswitch



