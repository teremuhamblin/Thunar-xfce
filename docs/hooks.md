# Hooks — THUNAR-XFCE

Les hooks permettent d’exécuter des scripts après l’installation ou l’activation d’un plugin.

## Emplacement
Les hooks sont définis dans :
`config/plugins.conf`

## Format
Chaque hook est un script Bash exécuté automatiquement :
- `hook_gtkhash`
- `hook_archive`
- `hook_vcs`
- `hook_volman`

## Objectif
Permettre des actions post-installation simples et modulaires.
