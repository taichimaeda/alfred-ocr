#!/bin/bash

[ -f /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
[ -f /opt/homebrew/opt/asdf/libexec/asdf.sh ] && source /opt/homebrew/opt/asdf/libexec/asdf.sh
[ -f "$HOME/.pyenv/bin/pyenv" ] && eval "$("$HOME/.pyenv/bin/pyenv" init -)"

read -r -d '' script << EOF
import sys
from ocrmac import ocrmac
path = sys.argv[1]
annotations = ocrmac.OCR(path).recognize()
for annotation in annotations:
    print(annotation[0])
EOF

path="$1"
if [ "$path" = "CANCELLED" ]; then
    echo -n "CANCELLED"
    exit 1
fi

if ! python3 -c "$script" "$path.png" | pbcopy && rm -f "$path".*; then
    echo -n "FAILED"
    exit 1
fi
