#!/bin/bash

LINKED="/usr/share/lightdm/images/current_background.jpg"
SELECTED_FILE="$(mktemp)"

ranger --choosefile="$SELECTED_FILE"

if [ ! -s "$SELECTED_FILE" ]; then
    rm -f "$SELECTED_FILE"
    exit 0
fi

LINK="$(cat "$SELECTED_FILE")"

sudo rm -f "$LINKED"
sudo cp "$LINK" "$LINKED"

rm -f "$SELECTED_FILE"

exit 0