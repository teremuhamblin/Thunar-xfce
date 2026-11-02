#!/bin/bash
# PluginManager — Gestionnaire de plugins Thunar‑xfce

PLUGIN_DIR="plugins"

echo "========================================"
echo "   THUNAR‑XFCE — PLUGIN MANAGER"
echo "========================================"

case "$1" in
    list)
        echo "[+] Plugins disponibles :"
        ls "$PLUGIN_DIR"
        ;;
    enable)
        plugin="$2"
        chmod +x "$PLUGIN_DIR/$plugin"
        echo "✔ Plugin $plugin activé"
        ;;
    disable)
        plugin="$2"
        chmod -x "$PLUGIN_DIR/$plugin"
        echo "✔ Plugin $plugin désactivé"
        ;;
    status)
        echo "[+] État des plugins :"
        for p in "$PLUGIN_DIR"/*; do
            if [ -x "$p" ]; then
                echo "✔ $(basename "$p") [ACTIF]"
            else
                echo "✘ $(basename "$p") [INACTIF]"
            fi
        done
        ;;
    *)
        echo "Usage : PluginManager.sh {list|enable|disable|status}"
        ;;
esac

echo "========================================"
