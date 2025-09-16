#!/bin/bash

# Menü anzeigen mit rofi oder wofi
chosen=$(echo -e " Shutdown\n Reboot\n Suspend\n Lock\n Logout" | wofi --dmenu -i -p "Power")

case "$chosen" in
    *Shutdown) systemctl poweroff ;;
    *Reboot) systemctl reboot ;;
    *Suspend) systemctl suspend ;;
    *Lock) swaylock bindsym $mod+l exec swaylock -f -c --effect-greyscale --indicator --clock --screenshots --effect-blur 4x5 --fade-in 0.3 --grace 0.4 --ring-color 183a54ee --indicator-radius 100 --key-hl-color 286ca1ee --indicator-thickness 8 --inside-color 00000088 --separator-color 00000000 --layout-border-color 286ca1ee --grace-no-mouse --grace-no-touch --font JetbrainsMono --inside-clear-color 00000088 --inside-caps-lock-color e65545ee --inside-ver-color 00000088 --inside-wrong-color 00000088  --text-color 286ca1ee --line-clear-color 00000088 --ring-clear-color 183a54ee --text-clear-color 266ca1ee --bs-hl-color 286ca1ee --ring-ver-color 286ca1ee --text-ver-color 286ca1ee --text-wrong-color d42a38ee --ring-wrong-color d42a38ee --text-caps-lock-color 286ca1ee ;;
    *Logout) swaymsg exit ;;
    *) exit 0 ;;
esac
