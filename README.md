## Projet Fin Etude CNAM

[Rapport projet Musquash.pdf](https://github.com/H-Erik2021/Fitness-club/files/9676112/Rapport.projet.Musquash.pdf)
[![version](https://img.shields.io/badge/Version-2.1.2-brightgreen.svg)](https://github.com/SimonDevelop/slim-sim/releases/tag/2.1.2)
[![Minimum PHP Version](https://img.shields.io/badge/php-%3E%3D%207.2-8892BF.svg)](https://php.net/)
[![Minimum Node Version](https://img.shields.io/badge/node-%3E%3D%2012-brightgreen.svg)](https://nodejs.org/en/)
[![Github Actions NodeJS](https://github.com/SimonDevelop/slim-sim/workflows/NodeJS/badge.svg)](https://github.com/SimonDevelop/slim-sim/actions)
[![Github Actions PHP](https://github.com/SimonDevelop/slim-sim/workflows/PHP/badge.svg)](https://github.com/SimonDevelop/slim-sim/actions)
[![GitHub license](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/SimonDevelop/slim-sim/blob/master/LICENSE)

![](https://github.com/SimonDevelop/slim-sim/raw/master/assets/img/logo.png)

Slim Sim is a skeleton based on PHP micro framework [Slim](https://www.slimframework.com/).

For all contributions on github, please read the document [CONTRIBUTING.md](https://github.com/SimonDevelop/slim-sim/blob/master/.github/CONTRIBUTING.md).


## Used libraries

- [twig-view](https://github.com/slimphp/Twig-View) for the views.
- [doctrine](https://github.com/doctrine/doctrine2) for the database.
- [data-fixtures](https://github.com/doctrine/data-fixtures) for the data fixture.
- [migrations](https://github.com/doctrine/migrations) for the migrations of the database.
- [validation](https://github.com/Respect/Validation) to validate the data.
- [csrf](https://github.com/slimphp/Slim-Csrf) for form security.
- [php-ref](https://github.com/digitalnature/php-ref) for an improved var_dump function.
- [phpdotenv](https://github.com/vlucas/phpdotenv) for the configuration of the environment.
- [console](https://github.com/symfony/console) for terminal commands.
- [monolog](https://github.com/Seldaek/monolog) to manage logs.
- [translation](https://github.com/symfony/translation) for the multilingual system.
- [webpack](https://github.com/webpack/webpack) for compilation and minification of files scss/sass/css/js.
- [cli-menu](https://github.com/php-school/cli-menu) for execute commands from a menu in your terminal.

#### NOTE
[cli-menu](https://github.com/php-school/cli-menu) use php posix extension which is not supported on windows, remember to delete this line in composer.json if you are under windows :
```
"php-school/cli-menu": "^4.0"
```

## Installation

```bash
$ composer create-project SimonDevelop/slim-sim <projet_name>
$ cd <projet_name>
$ composer install
$ npm install
```
Check that the `.env` file has been created, this is the configuration file of your environment or you define the connection to the database, the environment` dev` or `prod` and the activation of the twig cache.

If the file has not been created, do it manually by duplicating the `.env.example` file.

Do not forget to check that your environment configuration of your database matches well.


## Permissions

Allow the `storage` folder to write to the web server side.


## Documentation

See the [User Documentation](https://slim-sim.netlify.app/) for more details.

You using 1.x version ? See this [User Documentation](https://slim-sim-v1.netlify.app/).

# Fitness Club

Le projet **Fitness Club** est une application de gestion de salle de sport, développée avec **PHP** et le framework **Slim**. Il permet aux **utilisateurs connectés** de réserver des créneaux pour profiter de divers services comme des séances de musculation, de squats, etc. Le **dashboard d'administration** permet aux administrateurs de gérer les séances, les salles de sport et les utilisateurs.

## Prérequis

Avant de commencer, assurez-vous d'avoir les éléments suivants installés sur votre machine :

- **PHP** (version 7.4 ou supérieure)
- **Composer** : Gestionnaire de dépendances PHP
- Serveur Web (ex: **Apache** ou **Nginx**) avec **PHP-FPM**
- **MySQL** ou **MariaDB** pour la base de données

## Installation

Clonez ce dépôt et installez les dépendances :

```bash
git clone https://github.com/Erik-9999/Fitness-club.git
cd Fitness-club
composer install
````
Configuration de la base de données
Créez une base de données MySQL ou MariaDB.

## Importez le fichier de base de données (database.sql ou similaire) dans votre base de données.

Modifiez le fichier .env pour configurer la connexion à la base de données :

```bash
DB_HOST=127.0.0.1
DB_NAME=fitness_club
DB_USER=root
DB_PASSWORD=root
````

## Démarrage
Lancez le serveur PHP intégré pour démarrer l'application en mode développement :

```bash
php -S localhost:8000 -t public
L'application sera accessible à l'adresse suivante :
http://localhost:8000
````

## Structure des répertoires

```bash
/public : Contient les fichiers publics (index.php, fichiers CSS/JS, etc.)

/src : Contient les fichiers source (contrôleurs, modèles, etc.)

/config : Contient les fichiers de configuration de l'application

/templates : Contient les vues pour l'interface utilisateur
````

## Fonctionnalités


### Utilisateurs (Clients) :
 - Inscription / Connexion : Les clients peuvent créer un compte et se connecter.

 - Réservation de créneaux : Les clients peuvent réserver des créneaux pour des séances de sport.

 - Consultation du planning : Visualisation des horaires des différentes séances disponibles.

### Administrateurs :
 - Dashboard : Une interface d'administration pour gérer l'application.

 - Gestion des séances : Ajouter, modifier, supprimer des séances de sport (musculation, squats, etc.).

 - Gestion des salles : Créer et modifier les salles de sport.

 - Gestion des utilisateurs : Ajouter, modifier ou supprimer des utilisateurs.

 - Déplacement des créneaux : Déplacer les créneaux de réservation des clients.


## API Endpoints

```bash
L'application expose plusieurs endpoints pour gérer les réservations et les données utilisateurs. Voici quelques exemples d'API :

POST /api/login : Authentification d'un utilisateur

GET /api/reservations : Récupérer toutes les réservations d'un utilisateur

POST /api/reservations : Créer une nouvelle réservation

GET /api/seances : Récupérer la liste des séances disponibles

GET /api/seances/{id} : Détails d'une séance

POST /api/admin/creer_seance : Créer une nouvelle séance (admin)

POST /api/admin/supprimer_utilisateur : Supprimer un utilisateur (admin)

POST /api/admin/deplacer_creneau : Déplacer un créneau de séance (admin)
````

##  Collaboration avec le Frontend
Le frontend utilise des formulaires pour envoyer des requêtes à ces API et afficher les données dans une interface réactive et conviviale. Assurez-vous que l'API backend est en fonctionnement avant d'utiliser le frontend.

### Technologies utilisées

 - PHP : Langage de programmation pour la logique du backend.
 
 - Slim Framework : Micro-framework PHP pour la gestion des routes et des requêtes.

 - Twig : Moteur de templates pour les vues
 
 - MySQL/MariaDB : Base de données relationnelle pour stocker les utilisateurs, les séances et les réservations.

 - HTML/CSS/JavaScript : Pour la partie frontend (utilisation de templates simples avec Bootstrap).
 
 - Bootstrap  : Pour une interface responsive
 
 - Composer : Outil pour la gestion des dépendances PHP.
