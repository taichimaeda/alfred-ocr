#!/bin/bash

[ -f /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
[ -f /opt/homebrew/opt/asdf/libexec/asdf.sh ] && source /opt/homebrew/opt/asdf/libexec/asdf.sh
[ -f "$HOME/.pyenv/bin/pyenv" ] && eval "$("$HOME/.pyenv/bin/pyenv" init -)"

path="$1"
if [ "$path" = "CANCELLED" ]; then
    echo -n "CANCELLED"
    exit 1
fi

if ! pix2tex "$path.png" | cut -d ' ' -f 2 | pbcopy && rm -f "$path".*; then
    echo -n "FAILED"
    exit 1
fi
