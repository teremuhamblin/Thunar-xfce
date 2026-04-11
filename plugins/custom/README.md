# Plugins Custom
>THUNAR-XFCE
- Ce dossier contient les plugins personnalisés utilisés par **THUNAR-XFCE**.

## Contenu
- Plugins développés spécialement pour le projet
- Fichiers `manifest.conf` décrivant chaque plugin
- Scripts `plugin.sh` exécutés automatiquement par le loader

## Fonctionnement
Tous les plugins du dossier sont chargés via `loader.sh` et exécutés au démarrage du système THUNAR-XFCE.

## Notes
Chaque plugin doit contenir :
- un dossier dédié  
- un `manifest.conf`  
- un `plugin.sh` exécutable

🟩 1. Système de plugins custom — Architecture + loader

📁 Arborescence

`
THUNAR-XFCE/
└── plugins/
    ├── custom/
    │   ├── loader.sh
    │   ├── example-plugin/
    │   │   ├── plugin.sh
    │   │   └── manifest.conf
    │   └── ...
`

---
