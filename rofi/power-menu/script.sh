#!/bin/bash
pwd
chosen=$(printf " Power Off\n Restart\n Lock" | rofi -dmenu -p "" -i -theme .dotfiles/rofi/power-menu/config.rasi)

case "$chosen" in
  " Power Off") poweroff ;;
  " Restart") reboot ;;
  " Lock") hyprlock ;;
  *) exit 1 ;;
esac