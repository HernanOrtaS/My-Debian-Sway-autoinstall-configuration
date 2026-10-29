#!/bin/bash

CONFIG="$HOME/.config/sway/kitty/kittyOptionsMenu.conf"
MENU="$HOME/.config/sway/scripts/open_config/Misc Options"

exec kitty \
    --config "$CONFIG" \
    --app-id openConfig \
    "$MENU"