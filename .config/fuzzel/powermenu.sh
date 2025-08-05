#!/bin/bash

# PowerMenu script using fuzzel instead of rofi
# Usage: ./powermenu.sh

# Options for powermenu
options="Lock
Logout
Shutdown
Reboot
Suspend"

# Get answer from user via fuzzel in dmenu mode
selected_option=$(echo "$options" | fuzzel --dmenu \
    --prompt "Power Menu: " \
    --lines 5 \
    --width 20 \
    --font "JetBrainsMono Nerd Font:size=12")

# Exit if no selection made (user pressed escape or clicked away)
if [ -z "$selected_option" ]; then
    exit 0
fi

# Do something based on selected option
case $selected_option in
    "Lock")
        swaylock
        ;;
    "Logout")
        loginctl terminate-session ${XDG_SESSION_ID-}
        ;;
    "Shutdown")
        systemctl poweroff
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Suspend")
        swaylock &
        systemctl suspend
        ;;
    *)
        exit 1
        ;;
esac
