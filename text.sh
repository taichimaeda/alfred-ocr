#!/bin/bash

path="$(mktemp)"

screencapture -i "$path.png"
if [ ! -f "$path.png" ]; then
    echo "No screenshot taken."
    exit 1
fi

python3 "$(dirname "$0")/text.py" "$path.png"

/bin/rm -f "$path".*
