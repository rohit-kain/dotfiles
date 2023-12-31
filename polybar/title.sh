#!/bin/bash

# Get the active window ID
active_win_id=$(xdotool getactivewindow)

# Get the window title of the active window
title=$(xdotool getwindowname "$active_win_id")

# Extract application name from the title
app_name=$(echo "$title" | awk -F ' - ' '{print $1}')

# Output the application name
echo "$app_name"
