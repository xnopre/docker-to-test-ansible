# Docker to test Ansible

> Projet `docker` pour générer un container minimaliste pour tester les scripts Ansible

Ce projet a été mise en forme à l'occasion de ma présentation aux [Human
Talks de Grenoble du mardi 14/11/2017](https://humantalks.com/cities/grenoble/events/357).
Les slides de ma présentation [sont en ligne](https://docs.google.com/presentation/d/1ZI2K4ZuiG_v6EfEojOr2D6tO9hjgY9Grwr_gNzqFZms/edit?usp=sharing).

Vous appréciez ce projet ? **Merci pour vos retours et contributions ! ;-)**

## Contenu du projet

* `docker` : projet `Docker` pour le container minimaliste
    * `Dockerfile` : fichier descriptif pour l'image
    * `*.sh` : scripts divers pour créer l'image, démarrer le container, l'arrêter (et le supprimer), "rentrer" dans le container, etc...
* `ansible` : exemple de tout petit projet `Ansible` pour tester et illustrer
    * `inventory` : fichier descriptif des machines cibles et les infos SSH pour s'y connecter
    * `prod.yml` : playbook minimaliste
    * `playbook.sh` : script pour jouer le playbook Ansible

> **Remarque** : le playbook est composé de `tasks` pour avoir un exemple vraiment simple
mais je déconseille cet usage et conseille l'utilisation de `roles` ! 

## Procédure

* Dans le répertoire `docker` : 
    * `./build.sh` pour construire l'image
    * `./start.sh` pour démarrer le container
    * `ssh -p 2200 ansible@localhost` pour tester la connexion SSH au container
    * Connecté en SSH sur le container, on peut alors vérifier que `curl --version` renvoie une erreur (pas encore installé)
* Dans le répertoire `ansible` :
    * `./playbook.sh` pour jouer le script Ansible
    * Connecté en SSH sur le container (ou via `./enter-container-shell.sh`), on peut vérifier que `curl --version` affiche des infos :-)
