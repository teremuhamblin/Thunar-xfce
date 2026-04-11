#!/usr/bin/env bash

# ============================================
#   THUNAR-XFCE — INSTALLATION DES PLUGINS
# ============================================

CONFIG="/opt/thunar-xfce/config/plugins.conf"
LOG="/var/log/thunar-xfce.log"

echo "[INFO] Chargement de la configuration..." | tee -a "$LOG"

# Fonction pour lire une valeur dans plugins.conf
get_conf() {
    grep "^$1" "$CONFIG" | awk -F '=' '{print $2}' | tr -d ' '
}

# Lecture des paramètres
PLUGIN_GTKHASH=$(get_conf plugin_gtkhash)
PLUGIN_ARCHIVE=$(get_conf plugin_archive)
PLUGIN_VCS=$(get_conf plugin_vcs)
PLUGIN_VOLMAN=$(get_conf plugin_volman)
AUTO_INSTALL=$(get_conf auto_install_dependencies)

echo "[INFO] Installation des plugins Thunar..." | tee -a "$LOG"

# --------------------------------------------
#  INSTALLATION DES DÉPENDANCES
# --------------------------------------------
if [[ "$AUTO_INSTALL" == "yes" ]]; then
    echo "[INFO] Installation des dépendances..." | tee -a "$LOG"
    sudo apt update -y >> "$LOG" 2>&1
fi

# --------------------------------------------
#  PLUGIN : GTKHASH
# --------------------------------------------
if [[ "$PLUGIN_GTKHASH" == "yes" ]]; then
    echo "[PLUGIN] Installation : thunar-gtkhash" | tee -a "$LOG"
    sudo apt install -y thunar-gtkhash >> "$LOG" 2>&1
else
    echo "[PLUGIN] Désactivé : thunar-gtkhash" | tee -a "$LOG"
fi

# --------------------------------------------
#  PLUGIN : ARCHIVE
# --------------------------------------------
if [[ "$PLUGIN_ARCHIVE" == "yes" ]]; then
    echo "[PLUGIN] Installation : thunar-archive-plugin" | tee -a "$LOG"
    sudo apt install -y thunar-archive-plugin >> "$LOG" 2>&1
else
    echo "[PLUGIN] Désactivé : thunar-archive-plugin" | tee -a "$LOG"
fi

# --------------------------------------------
#  PLUGIN : VCS (Git/SVN)
# --------------------------------------------
if [[ "$PLUGIN_VCS" == "yes" ]]; then
    echo "[PLUGIN] Installation : thunar-vcs-plugin" | tee -a "$LOG"
    sudo apt install -y thunar-vcs-plugin >> "$LOG" 2>&1
else
    echo "[PLUGIN] Désactivé : thunar-vcs-plugin" | tee -a "$LOG"
fi

# --------------------------------------------
#  PLUGIN : VOLMAN (périphériques)
# --------------------------------------------
if [[ "$PLUGIN_VOLMAN" == "yes" ]]; then
    echo "[PLUGIN] Installation : thunar-volman" | tee -a "$LOG"
    sudo apt install -y thunar-volman >> "$LOG" 2>&1
else
    echo "[PLUGIN] Désactivé : thunar-volman" | tee -a "$LOG"
fi

echo "[OK] Tous les plugins ont été traités." | tee -a "$LOG"
exit 0
