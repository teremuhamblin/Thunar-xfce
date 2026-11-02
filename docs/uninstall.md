🟩 1. UNINSTALL.md (simple et court)

`markdown

Désinstallation — THUNAR-XFCE

Ce guide explique comment supprimer complètement THUNAR-XFCE du système.

Suppression du dossier principal
`
sudo rm -rf /opt/thunar-xfce
`

Suppression des logs
`
sudo rm -f /var/log/thunar-xfce.log
`

Suppression des plugins installés
Optionnel :
`
sudo apt remove -y thunar-archive-plugin thunar-volman thunar-vcs-plugin thunar-gtkhash
`

Nettoyage final
`
thunar -q
`

THUNAR-XFCE est maintenant désinstallé.
`

---
