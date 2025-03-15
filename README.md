# PrestaShop Docker Development Environment

![Docker](https://img.shields.io/badge/Docker-20.10%2B-blue)
![PrestaShop](https://img.shields.io/badge/PrestaShop-1.7%2B-green)
![License](https://img.shields.io/badge/license-MIT-brightgreen)

## 📋 Description
Environnement de développement Docker pour PrestaShop avec support de thème enfant personnalisé. Ce projet permet de démarrer rapidement une boutique PrestaShop avec :
- Configuration Docker optimisée
- Support multi-conteneurs (PrestaShop + MySQL)
- Thème enfant pré-configuré
- Interface d'administration sécurisée

## 🚀 Fonctionnalités
- Installation automatique de PrestaShop
- Configuration de base de données pré-définie
- Volumes persistants pour les données
- Support du thème enfant avec personnalisation du footer
- Interface d'administration personnalisée (admin-shop)

## 🔧 Prérequis
- Docker
- Docker Compose
- Port 8080 disponible (front-office)
- Port 3306 disponible (MySQL)

## 📦 Installation

1. Cloner le projet
```bash
git clone <votre-repo>
cd presta
```

2. Démarrer l'environnement
```bash
docker-compose up -d
```

## 🔐 Sécurité
- Accès back-office sécurisé via URL personnalisée
- Isolation des conteneurs
- Persistance des données via volumes Docker
- Mots de passe configurables via variables d'environnement

## 🛠️ Développement
Ce projet est idéal pour :
- Développement de thèmes PrestaShop
- Tests de modules
- Environnement de staging
- Formation et apprentissage

## 📝 License
MIT License - voir le fichier [LICENSE](LICENSE) pour plus de détails.

## 🤝 Contribution
Les contributions sont les bienvenues ! N'hésitez pas à :
1. Fork le projet
2. Créer une branche (`git checkout -b feature/AmazingFeature`)
3. Commit vos changements (`git commit -m 'Add some AmazingFeature'`)
4. Push vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une Pull Request

## URLs importantes
- Front-office : http://localhost:8080
- Back-office : http://localhost:8080/admin-shop
- Installation : http://localhost:8080/install

## Informations Base de données
- Serveur : db
- Base de données : prestashop
- Utilisateur : prestashop
- Mot de passe : prestashop
- Port : 3306

## Commandes utiles

### Gestion des conteneurs
```bash
# Démarrer les conteneurs
docker-compose up -d

# Arrêter les conteneurs
docker-compose stop

# Redémarrer les conteneurs
docker-compose start

# Arrêter et supprimer les conteneurs
docker-compose down
```

### Logs et Debug
```bash
# Voir l'état des conteneurs
docker ps

# Voir les logs en temps réel
docker-compose logs -f

# Logs spécifiques
docker-compose logs db        # MySQL
docker-compose logs prestashop # PrestaShop
```

### Accès aux conteneurs
```bash
# Shell PrestaShop
docker exec -it prestashop bash

# MySQL
docker exec -it prestashop_db mysql -uprestashop -pprestashop prestashop
```

## Résolution de problèmes

### Redémarrage complet
```bash
docker-compose down
docker-compose up -d
```

### Gestion des volumes
```bash
# Lister les volumes
docker volume ls

# Nettoyer les volumes (⚠️ perte de données)
docker-compose down -v

# Arrêter et supprimer tous les volumes
docker volume prune -f

# Arrêter tous les conteneurs et supprimer tous les volumes
docker-compose down --volumes --remove-orphans
```

## Bonnes pratiques
- Attendre 30-60 secondes après le démarrage initial
- Sauvegarder régulièrement via le back-office
- Ne pas modifier directement les fichiers dans les volumes
- Utiliser l'interface d'administration pour les modifications

## Structure du projet
```
presta/
├── docker-compose.yml
├── README.md
└── volumes/
    ├── ps_data/    (PrestaShop)
    └── db_data/    (MySQL)
```


![preview](https://github.com/user-attachments/assets/2cb1a09d-afdf-48b7-affa-9c93b5e35013)

