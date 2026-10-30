#!/bin/bash

CONFIG="$HOME/.config/sway/kitty/kittyOptionsMenu.conf"
MENU="$HOME/.config/sway/scripts/choose_waybar/Waybar"

nohup kitty \
    --config "$CONFIG" \
    --app-id openConfig \
    "$MENU" \
    >/dev/null 2>&1 &
clear