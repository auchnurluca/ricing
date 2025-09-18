#!/bin/bash

CHOICE=$(echo -e "Shutdown\nReboot\nHyprlock\nSuspend" | wofi --dmenu)
case $CHOICE in
  Shutdown) systemctl poweroff ;;
  Reboot) systemctl reboot ;;
  Hyprlock) hyprctl dispatch dpms off ;;
  Suspend) systemctl suspend ;;
esac
