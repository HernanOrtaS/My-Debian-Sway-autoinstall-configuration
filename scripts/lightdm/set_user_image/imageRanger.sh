#!/bin/bash

LINKED="/usr/share/lightdm/images/current_user_image.jpg"
SELECTED_FILE="$(mktemp)"
RANGER_CONFIG="$HOME/.config/sway/ranger"

ranger --confdir="$RANGER_CONFIG" --choosefile="$SELECTED_FILE"

if [ ! -s "$SELECTED_FILE" ]; then
    rm -f "$SELECTED_FILE"
    exit 0
fi

LINK="$(cat "$SELECTED_FILE")"

sudo rm -f "$LINKED"
sudo cp "$LINK" "$LINKED"

rm -f "$SELECTED_FILE"

exit 0