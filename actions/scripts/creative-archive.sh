#!/bin/bash
TARGET="$1"
BASENAME=$(basename "$TARGET")
ARCHIVE="${BASENAME}.tar.gz"

tar -czf "$ARCHIVE" "$TARGET"

notify-send "Archive créée" "Fichier : $ARCHIVE"
