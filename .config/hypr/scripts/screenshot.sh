#!/bin/bash

MODE="$1"

FILE="$HOME/screenshots/screenshot_$(date +%Y%m%d_%H%M%S).png"

mkdir -p "$HOME/screenshots"

if [ "$MODE" = "area" ]; then
    grim -g "$(slurp)" "$FILE"
    notify-send "Screenshot area saved"
else
    grim "$FILE"
    notify-send "Fullscreen screenshot saved"
fi

wl-copy < "$FILE"

swappy -f "$FILE" -o -
