#!/bin/bash

path="$(mktemp)"

screencapture -i "$path.png"
if [ ! -f "$path.png" ]; then
    echo "No screenshot taken."
    exit 1
fi

read -r -d '' script << EOF
import sys

from ocrmac import ocrmac

path = sys.argv[1]
annotations = ocrmac.OCR(path).recognize()

for annotation in annotations:
    print(annotation[0])
EOF

python3 -c "$script" "$path.png"

/bin/rm -f "$path".*
