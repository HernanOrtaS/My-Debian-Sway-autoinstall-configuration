#!/bin/bash

CONFIG="$HOME/.config/sway/kitty/kittyNmtui.conf"

nohup kitty --config "$CONFIG" --app-id nmtui "nmtui" & clear
