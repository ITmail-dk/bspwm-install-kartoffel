#! /bin/sh

# https://github.com/ericmurphyxyz/archrice

chosen=$(printf "  Power Off\n  Restart\n  Lock" | rofi -dmenu -i -theme-str '@import "powermenu.rasi"')

case "$chosen" in
	"  Power Off") systemctl poweroff ;;
	"  Restart") systemctl reboot ;;
	"  Lock") xsecurelock ;;
	*) exit 1 ;;
esac