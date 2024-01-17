#!/usr/bin/env bash

dunst_notif="$HOME/.config/dunst/images/bell.png"

LAYOUT=$(hyprctl -j getoption general:layout | jq '.str' | sed 's/"//g')

case $LAYOUT in
"master")
	hyprctl keyword general:layout dwindle
	;;
"dwindle")
	hyprctl keyword general:layout master
	;;
*) ;;

esac
