# Criminalrecord
Un système de gestion des casiers judiciaires est un système informatique ou Web qui facilite la gestion des casiers judiciaires, des dossiers officiels qui contribue à accroître l'efficacité de la police. Ce système ou logiciel aidera à rendre tout le fonctionnement sans papier.

Après avoir cloné le projet exécuter la commande 

" npm install " pour télécharger les dépendances nécessaires

Si vous vous êtes en développement vous pouvez ajouter 

" npm install --save nodemon "

Le fichier dump pour la base des données est dans le dossier
" src/database/dump/script.sql  "



#List des apis:

- /api/criminal-record/

    * /api/criminal-record/about

    * /api/criminal-record/contact

    * /api/criminal-record/login



- /api/criminal-record/casier

    * /api/criminal-record/casier/:id

    * /api/criminal-record/casier/search

    * /api/criminal-record/casier/add
