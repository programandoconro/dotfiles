#!/bin/sh

OUT=$(printf "HDMI\nANALOG" | rofi -dmenu -p "Elige una salida de audio")

case $OUT in
	HDMI)
		ponymix set-profile output:hdmi-stereo+input:analog-stereo
		;;
	ANALOG)
		ponymix set-profile output:analog-stereo+input:analog-stereo
		;;
esac

