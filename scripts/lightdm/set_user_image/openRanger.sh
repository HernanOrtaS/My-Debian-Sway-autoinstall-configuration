#!/bin/bash

CONFIG="$HOME/.config/sway/kitty/kittyWallpaperRanger.conf"
SCRIPT="$HOME/.config/sway/scripts/lightdm/set_user_image/imageRanger.sh"

nohup kitty --config "$CONFIG" --app-id imageRanger "$SCRIPT" & clear
