#!/bin/bash
# SystemCheck — Diagnostic tactique Thunar‑xfce

echo "========================================"
echo "   THUNAR‑XFCE — SYSTEM CHECK MODE"
echo "========================================"

check() {
    if command -v "$1" >/dev/null 2>&1; then
        echo "✔ $1 détecté"
    else
        echo "✘ $1 manquant"
    fi
}

echo "[+] Vérification des composants XFCE"
check thunar
check tumblerd
check xfconf-query

echo "[+] Vérification des actions"
[ -d "actions" ] && echo "✔ actions/ OK" || echo "✘ actions/ manquant"

echo "[+] Vérification des plugins"
[ -d "plugins" ] && echo "✔ plugins/ OK" || echo "✘ plugins/ manquant"

echo "[+] Vérification des permissions"
if [ "$EUID" -ne 0 ]; then
    echo "✘ Exécution sans privilèges root"
else
    echo "✔ Privilèges root OK"
fi

echo "[+] Vérification des logs"
[ -d "logs" ] && echo "✔ logs/ OK" || echo "✘ logs/ manquant"

echo "========================================"
echo "   DIAGNOSTIC TERMINÉ"
echo "========================================"
