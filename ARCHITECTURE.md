# Architecture — THUNAR-XFCE

Ce document décrit la structure générale du projet **THUNAR-XFCE**.

## Structure principale
- `tui/` — interface textuelle (menu, couleurs, bannières, effets)
- `config/` — fichiers de configuration (thunar.conf, actions.conf, plugins.conf)
- `plugins/` — plugins officiels et custom
- `logs/` — journaux du projet
- `actions/` — scripts d’actions Thunar
- `scripts/` — outils internes et utilitaires

## Fonctionnement
Le TUI charge les configurations, gère les plugins et exécute les actions.  
Les plugins custom sont chargés automatiquement via `plugins/custom/loader.sh`.

## Objectif
Fournir une architecture claire, modulaire et extensible.
