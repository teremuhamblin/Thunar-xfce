#!/usr/bin/env bash

set -e

INSTALL_DIR="/opt/thunar-xfce"
LOG="/var/log/thunar-xfce.log"

mkdir -p "$INSTALL_DIR" /var/log/thunar-xfce

cp -r actions plugins config tui thunar-xfce.sh "$INSTALL_DIR"

echo "[OK] Installation THUNAR-XFCE terminée" | tee -a "$LOG"
