# Introduction à Docker

## Qu’est-ce que Docker ?
Docker est un outil qui permet de mettre une application dans un **conteneur**.  
Un conteneur est une petite boîte qui contient :  
- Le code de ton app,  
- Les dépendances nécessaires,  
- La configuration.  

Résultat : ton app marche **partout de la même façon** (PC, serveur, cloud).  

---

## Différence VM et Conteneur
- **Machine Virtuelle (VM)** : lourde, contient un OS complet.  
- **Conteneur Docker** : léger, rapide, partage le noyau de l’hôte.  

---

##  Concepts clés
- **Image** → modèle ou recette d’une application (ex: `nginx`, `mysql`).  
- **Conteneur** → image qui tourne (instance active).  
- **Dockerfile** → fichier qui décrit comment construire une image.  
- **Volume** → stockage permanent des données.  
- **Network** → réseau qui relie plusieurs conteneurs.  

---

## 🛠️ Commandes de base
```bash
# Télécharger une image
docker pull nginx

# Lancer un conteneur simple
docker run hello-world

# Voir les conteneurs actifs
docker ps

# Voir tous les conteneurs (même stoppés)
docker ps -a

# Arrêter un conteneur
docker stop <id>

# Supprimer un conteneur
docker rm <id>
