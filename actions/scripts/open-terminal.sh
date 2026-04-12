#!/bin/bash
DIR="$1"

if [ -d "$DIR" ]; then
    cd "$DIR" || exit 1
fi

# Détection automatique du terminal
TERMINAL=$(command -v x-terminal-emulator || command -v gnome-terminal || command -v xfce4-terminal)

$TERMINAL &
