#!/usr/bin/env bash

source /opt/thunar-xfce/tui/colors.sh

# ============================
#   EFFETS VISUELS AVANCÉS
# ============================

pause() {
    echo -e "${DIM}Appuie sur Entrée pour continuer...${NC}"
    read
}

# Effet de frappe (typewriter)
typewrite() {
    text="$1"
    for ((i=0; i<${#text}; i++)); do
        echo -n "${text:$i:1}"
        sleep 0.01
    done
    echo
}

# Transition horizontale
transition() {
    for i in {1..40}; do
        echo -ne "${CYAN}─${NC}"
        sleep 0.01
    done
    echo
}

# Cadre dynamique
frame() {
    local text="$1"
    local len=${#text}
    local border=$(printf '─%.0s' $(seq 1 $((len+4))))

    echo -e "${CYAN}┌${border}┐${NC}"
    echo -e "${CYAN}│${NC}  ${BWHITE}${text}${NC}  ${CYAN}│${NC}"
    echo -e "${CYAN}└${border}┘${NC}"
}

# Curseur animé
spinner() {
    local pid=$!
    local delay=0.1
    local spin='|/-\'
    while kill -0 $pid 2>/dev/null; do
        for i in {0..3}; do
            echo -ne "${CYAN}${spin:$i:1}${NC} "
            sleep $delay
            echo -ne "\r"
        done
    done
}

# Bannière animée
banner_animated() {
    clear
    while IFS= read -r line; do
        echo -e "${BCYAN}${line}${NC}"
        sleep 0.02
    done < /opt/thunar-xfce/tui/banner.txt
    echo
}
