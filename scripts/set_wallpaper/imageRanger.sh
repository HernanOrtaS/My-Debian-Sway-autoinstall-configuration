#!/bin/bash

LINKED="$HOME/.config/sway/wallpaper/current.jpg"
SELECTED_FILE="$(mktemp)"

ranger --choosefile="$SELECTED_FILE"

if [ ! -s "$SELECTED_FILE" ]; then
    rm -f "$SELECTED_FILE"
    exit 0
fi

LINK="$(cat "$SELECTED_FILE")"

rm -f "$LINKED"
ln -s "$LINK" "$LINKED"

pkill swaybg
nohup swaybg -i "$LINKED" -m fill >/dev/null 2>&1 &

rm -f "$SELECTED_FILE"

exit 0