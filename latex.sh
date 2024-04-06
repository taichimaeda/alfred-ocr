#!/bin/bash

path="$(mktemp)"

screencapture -i "$path.png"
if [ ! -f "$path.png" ]; then
    echo "No screenshot taken."
    exit 1
fi

pix2tex "$path.png" | cut -d ' ' -f 2 | pbcopy

/bin/rm -f "$path".*
