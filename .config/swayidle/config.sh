#!/bin/bash

# Swayidle Configuration Script
# Place this file at ~/.config/swayidle/config.sh
# Make it executable: chmod +x ~/.config/swayidle/config.sh
# Add to your window manager startup: ~/.config/swayidle/config.sh

# Kill any existing swayidle processes
killall swayidle 2>/dev/null

# Start swayidle with comprehensive timeout settings
swayidle -w \
    timeout 300 'swaylock -f' \
    timeout 600 'swaymsg "output * power off"' \
         resume 'swaymsg "output * power on"' \
    timeout 900 'systemctl suspend' \
         resume 'swaymsg "output * power on"' \
    before-sleep 'swaylock -f' \
    lock 'swaylock -f' \
    unlock 'killall -SIGUSR1 swaylock' &

# Optional: Add logging
# echo "Swayidle started at $(date)" >> ~/.config/swayidle/swayidle.log
