#!/bin/bash

CONFIG="$HOME/.config/sway/kitty/kittyOptionsMenu.conf"
MENU="$HOME/.config/sway/scripts/choose_waybar/Secondary"

nohup kitty \
    --config "$CONFIG" \
    --app-id openConfig \
    "$MENU" \
    & clear