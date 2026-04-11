#!/usr/bin/env bash

PLUGIN_DIR="/opt/thunar-xfce/plugins/custom"
LOG="/var/log/thunar-xfce.log"

echo "[CUSTOM] Chargement des plugins custom..." | tee -a "$LOG"

for plugin in "$PLUGIN_DIR"/*; do
    [[ -d "$plugin" ]] || continue

    if [[ -f "$plugin/plugin.sh" ]]; then
        echo "[CUSTOM] Plugin détecté : $(basename "$plugin")" | tee -a "$LOG"
        bash "$plugin/plugin.sh"
    fi
done
