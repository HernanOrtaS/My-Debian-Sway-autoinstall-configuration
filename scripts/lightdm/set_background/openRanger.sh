#!/bin/bash

CONFIG="$HOME/.config/sway/kitty/kittyWallpaperRanger.conf"
SCRIPT="$HOME/.config/sway/scripts/lightdm/set_background/imageRanger.sh"

nohup kitty \
    --config "$CONFIG" \
    --app-id imageRanger \
    "$SCRIPT" \
    >/dev/null 2>&1 &
clear
