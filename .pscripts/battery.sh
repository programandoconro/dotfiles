#!/bin/sh

PER=$(acpi -b | sed s/[%,]//g | awk '{print $4}')
CH=$(acpi -b | sed s/,//g | awk '{print $3}')

#if [ "$PER" -le "100" ] && [ "$PER" -gt "75" ]; then
#	ICO=""
#elif [ "$PER" -le "75" ] && [ "$PER" -gt "50" ]; then
#	ICO=""
#elif [ "$PER" -le "50" ] && [ "$PER" -gt "25" ]; then
#	ICO=""
#elif [ "$PER" -le "25" ] && [ "$PER" -gt "10" ]; then
#	ICO=""
#elif [ "$PER" -le "10" ] && [ "$PER" -gt "0" ]; then
#	ICO=""
#fi

if [ "$PER" -le "11" ] && [ "$CH" = "Discharging"]; then
	notify-send "Ya ponme a cargar hijo de tu puta madre"
fi

ICO="🔋"

if [ "$CH" = "Discharging" ]; then
	printf "%s %s %%\n\n" "$ICO" "$PER"
elif [ "$CH" = "Charging" ]; then
	printf "⚡ %s %%\n\n" "$PER"
elif [ "$CH" = "Full" ]; then
	printf "💖 %s %%\n\n" "$PER"
fi

