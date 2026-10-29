#!/bin/bash

CONFIG="$HOME/.config/sway/kitty/kittyWallpaperRanger.conf"
SCRIPT="$HOME/.config/sway/scripts/set_wallpaper/imageRanger.sh"

nohup kitty --config "$CONFIG" --app-id imageRanger "$SCRIPT" & clear
