#!/bin/bash

path="$(mktemp)"
screencapture -i "$path.png"
if [ ! -f "$path.png" ]; then
    echo -n "CANCELLED"
    exit 1
fi

echo -n "$path"
