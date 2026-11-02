###### Comment créer ton paquet Debian .deb pour ton projet Thunar‑xfce, étape par étape, sans erreur, clair et 100% fonctionnel.

```text
👉 Créer ton paquet DEBIAN complet .deb
Méthode officielle Debian, adaptée à ton projet, avec structure, commandes, scripts, contrôle, et build final.
```

#### 🟩 1. Créer la structure obligatoire du paquet Debian
- 》》 Voici la structure exacte que ton projet doit contenir :

```text
Thunar-xfce/
└── debian/
    ├── DEBIAN/
    │   ├── control
    │   ├── postinst
    │   └── postrm
    └── opt/thunar-xfce/
        ├── actions/
        ├── plugins/
        ├── tui/
        ├── config/
        ├── logs/
        ├── install.sh
        └── uninstall.sh
```
---

```text
📌 Important :  
- **Le dossier DEBIAN/ doit être en majuscules**.  
- **Le dossier opt/thunar-xfce/ contient ton projet installé**.  
- **Le .deb se construit à partir du dossier debian/**.
```

---

#### 🟩 2. Créer le fichier control (obligatoire)
- 》》 Place-le dans :
```text
Thunar-xfce/debian/DEBIAN/control
```

- 》》 Contenu :
```text
Package: thunar-xfce
Version: 1.0.0
Section: utils
Priority: optional
Architecture: all
Maintainer: Teremu
Description: Actions Thunar tactiques + TUI militaire + plugins modulaires.
```

✔ **Ce fichier est obligatoire** 
✔ **Sans lui → impossible de créer le .deb**

---

#### 🟩 3. Créer le script postinst (installation)
- 》》 Place-le dans :
```text
Thunar-xfce/debian/DEBIAN/postinst
```

- 》》 Contenu :
```bash
!/bin/bash
echo "[+] Installation Thunar‑xfce terminée ✔"
```

- 》》 Puis rends-le exécutable :
```bash
chmod 755 debian/DEBIAN/postinst
```

---

#### 🟩 4. Créer le script postrm (désinstallation)
- 》》 Place-le dans :
```text
Thunar-xfce/debian/DEBIAN/postrm
```

- 》》 Contenu :
```bash
!/bin/bash
echo "[+] Thunar‑xfce désinstallé proprement ✔"
```

- 》》 Rends-le exécutable :
```bash
chmod 755 debian/DEBIAN/postrm
```

---

#### 🟩 5. Copier ton projet dans opt/thunar-xfce/
- 》》 Tout ton projet doit être dans :
```text
Thunar-xfce/debian/opt/thunar-xfce/
```

>> Donc :
```text
- actions/
- plugins/
- tui/
- config/
- logs/
- install.sh
- uninstall.sh
```

---

#### 🟩 6. Construire le paquet .deb
- 》》 Place-toi dans la racine du projet :
```bash
cd Thunar-xfce
```

- 》》 Commande de build :
```bash
dpkg-deb --build debian thunar-xfce1.0.0all.deb
```

- 》》 Résultat :
```text
thunar-xfce1.0.0all.deb
```

>> 🎯 Ton paquet Debian est créé.

---

#### 🟩 7. Installer ton paquet .deb
```bash
sudo dpkg -i thunar-xfce1.0.0all.deb
```

---

#### 🟩 8. Désinstaller ton paquet
```bash
sudo dpkg -r thunar-xfce
```

---

#### 🟩 9. Résumé militaire (ultra‑clair)

| Étape | Action |
|------|--------|
| 1 | Créer dossier debian/ |
| 2 | Ajouter DEBIAN/control |
| 3 | Ajouter postinst + postrm |
| 4 | Copier ton projet dans opt/thunar-xfce/ |
| 5 | Build avec dpkg-deb --build |
| 6 | Installer avec dpkg -i |

---
