#!/usr/bin/env bash

# Chargement des couleurs
source /opt/thunar-xfce/tui/colors.sh

LOG="/var/log/thunar-xfce.log"
INSTALL_DIR="/opt/thunar-xfce"

# ---------------------------------------------------------
#  BANNIÈRE
# ---------------------------------------------------------
banner() {
    clear
    if [[ -f "$INSTALL_DIR/tui/banner.txt" ]]; then
        cat "$INSTALL_DIR/tui/banner.txt"
    else
        echo -e "${GREEN}[ THUNAR-XFCE ]${NC}"
    fi
    echo
}

# ---------------------------------------------------------
#  MENU : ACTIONS
# ---------------------------------------------------------
menu_actions() {
    while true; do
        banner
        echo -e "${CYAN}=== ACTIONS THUNAR ===${NC}"
        echo -e "1) Compression"
        echo -e "2) Checksum"
        echo -e "3) Informations média"
        echo -e "4) Ouvrir un terminal"
        echo -e "5) Suppression sécurisée"
        echo -e "0) Retour"
        echo
        read -p "> " choix

        case $choix in
            1) "$INSTALL_DIR/actions/compress.sh" ;;
            2) "$INSTALL_DIR/actions/checksum.sh" ;;
            3) "$INSTALL_DIR/actions/media-info.sh" ;;
            4) "$INSTALL_DIR/actions/open-terminal.sh" ;;
            5) "$INSTALL_DIR/actions/secure-delete.sh" ;;
            0) return ;;
            *) echo -e "${RED}Option invalide${NC}" ;;
        esac
        read -p "Appuie sur Entrée pour continuer..."
    done
}

# ---------------------------------------------------------
#  MENU : PLUGINS
# ---------------------------------------------------------
menu_plugins() {
    while true; do
        banner
        echo -e "${CYAN}=== PLUGINS THUNAR ===${NC}"
        echo -e "1) Installer GTKHash"
        echo -e "2) Installer Archive Plugin"
        echo -e "3) Installer VCS Plugin"
        echo -e "4) Installer Volman"
        echo -e "0) Retour"
        echo
        read -p "> " choix

        case $choix in
            1) "$INSTALL_DIR/plugins/plugin-gtkhash.sh" ;;
            2) "$INSTALL_DIR/plugins/plugin-archive.sh" ;;
            3) "$INSTALL_DIR/plugins/plugin-vcs.sh" ;;
            4) "$INSTALL_DIR/plugins/plugin-volman.sh" ;;
            0) return ;;
            *) echo -e "${RED}Option invalide${NC}" ;;
        esac
        read -p "Appuie sur Entrée pour continuer..."
    done
}

# ---------------------------------------------------------
#  MENU PRINCIPAL
# ---------------------------------------------------------
menu_principal() {
    while true; do
        banner
        echo -e "${CYAN}=== MENU PRINCIPAL ===${NC}"
        echo -e "1) Actions Thunar"
        echo -e "2) Plugins"
        echo -e "3) Configuration"
        echo -e "4) Voir les logs"
        echo -e "0) Quitter"
        echo
        read -p "> " choix

        case $choix in
            1) menu_actions ;;
            2) menu_plugins ;;
            3) nano "$INSTALL_DIR/config/thunar.conf" ;;
            4) less "$LOG" ;;
            0) exit 0 ;;
            *) echo -e "${RED}Option invalide${NC}" ;;
        esac
    done
}
