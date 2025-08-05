#!/bin/bash

# Options for powermenu
lock="Lock"
logout="Logout"
shutdown="Shutdown"
reboot="Reboot"
suspend="Suspend"

# Get answer from user via rofi
selected_option=$(echo "$lock
$logout
$shutdown
$reboot
$suspend" | rofi -dmenu \
                  -i \
                  -p "Power Menu" \
                  -config "~/.config/rofi/config.rasi" \
                  -font "JetBrainsMono Nerd Font 12" \
                  -width "15" \
                  -lines 5 \
                  -line-margin 3 \
                  -line-padding 10 \
                  -scrollbar-width "0" )

# Do something based on selected option
case $selected_option in
    "$lock")
        hyprlock
        ;;
    "$logout")
        loginctl terminate-session ${XDG_SESSION_ID-}
        ;;
    "$shutdown")
        systemctl poweroff
        ;;
    "$reboot")
        systemctl reboot
        ;;
    "$suspend")
        hyprlock &
        systemctl suspend
        ;;
    *)
        exit 1
        ;;
esac
