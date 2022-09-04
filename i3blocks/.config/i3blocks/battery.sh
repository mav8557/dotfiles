#!/bin/bash

BAT=$(cat /sys/class/power_supply/BAT0/capacity)
CHARGING=$(cat /sys/class/power_supply/AC/online)

if [[ $CHARGING -eq "1" ]]; then
	echo "Charging: $BAT%"
	echo "CHG: $BAT%"
else
	echo "Battery: $BAT%"
	echo "BAT: $BAT%"
fi


# Full and short texts

# Set urgent flag below 5% or use orange below 20%
[ ${BAT%?} -le 5 ] && exit 33
[ ${BAT%?} -le 20 ] && echo "#FF8000"

# background
#echo "#333333"

exit 0
