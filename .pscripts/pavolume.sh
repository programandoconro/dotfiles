#!/bin/sh
 
VOL=$(ponymix | sed -n '3{p;q}' | sed s/%//g | awk '{print $3}')
—
if [ "$VOL" = "0" ]; then 
	string="🔇 ——————————"
elif [ "$VOL" = "5" ]; then
	string="🔈 ——————————"
elif [ "$VOL" = "10" ] || [ "$VOL" = "15" ]; then
	string="🔈 |—————————"
elif [ "$VOL" = "20" ] || [ "$VOL" = "25" ]; then
	string="🔈 —|————————"
elif [ "$VOL" = "30" ] || [ "$VOL" = "35" ]; then
	string="🔉 ——|———————"
elif [ "$VOL" = "40" ] || [ "$VOL" = "45" ]; then
	string="🔉 ———|——————"
elif [ "$VOL" = "50" ] || [ "$VOL" = "55" ]; then
	string="🔉 ————|—————"
elif [ "$VOL" = "60" ] || [ "$VOL" = "65" ]; then
	string="🔉 —————|————"
elif [ "$VOL" = "70" ] || [ "$VOL" = "75" ]; then
	string="🔊 ——————|———"
elif [ "$VOL" = "80" ] || [ "$VOL" = "85" ]; then
	string="🔊 ———————|——"
elif [ "$VOL" = "90" ] || [ "$VOL" = "95" ]; then
	string="🔊 ————————|—"
elif [ "$VOL" = "100" ]; then
	string="🔊 —————————|"
fi
 
printf "%s %s %%\n\n" "$string" "$VOL"
