#!/bin/bash
# check-battery.sh

if [[ $(cat /sys/class/power_supply/BAT0/capacity) -lt 85 ]]; then
    notify-send "⚠️ Akku niedrig!"
fi
