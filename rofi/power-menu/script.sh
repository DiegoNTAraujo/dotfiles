#!/bin/bash

chosen=$(printf " Power Off\n Restart\n Logout\n Lock" | rofi -dmenu -p "" -i -theme .dotfiles/rofi/power-menu/config.rasi)

case "$chosen" in
  " Power Off") poweroff ;;
  " Restart") reboot ;;
  " Logout") hyprctl dispatch exit ;;
  " Lock") hyprlock ;;
  *) exit 1 ;;
esac