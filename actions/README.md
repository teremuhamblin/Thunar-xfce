 # actions/

Ce dossier contient l’ensemble des actions personnalisées utilisées par **THUNAR‑XFCE**.  
Chaque action est composée de deux éléments :

- un fichier `.desktop` (déclaration de l’action pour Thunar)
- un script Bash associé dans `actions/scripts/`

## Structure

```
actions/
├── *.desktop
└── scripts/
    └── *.sh
```

## Objectif

Fournir des actions rapides, propres et modulaires pour améliorer l’usage de Thunar :  
terminal, archivage, checksum, suppression sécurisée, etc.

## Installation

Copier les fichiers `.desktop` dans :

```
~/.local/share/file-manager/actions/
```

Les scripts doivent rester dans :

```
/opt/thunar-xfce/actions/scripts/
```

## Notes

- Chaque action est autonome et facilement modifiable.  
- Les scripts sont écrits pour être robustes, silencieux et compatibles XFCE.
