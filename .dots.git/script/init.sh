#!/usr/bin/env bash

echo "clone dots"
DOTS_FROM="$HOME/repos/dots"
DOTS_TO="$HOME/.dots.git"
if [[ ! -d "$DOTS_TO" ]]; then
    mkdir -p "$DOTS_TO"
    cp -vRn $DOTS_FROM/.git "$DOTS_TO"
    cp -vRn $DOTS_FROM/. $HOME
fi

echo "config .dots.git's url"
git -C ~/.dots.git remote set-url origin git@github.com:mezlogo/dots.git
