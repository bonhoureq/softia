# Test Technique Softia

![](https://media-exp1.licdn.com/dms/image/C4D1BAQGOr8hS0LXppQ/company-background_10000/0/1557303164792?e=2159024400&v=beta&t=qRwdIy4Zpb5-usIEftTkmvKwCjb0ewD8ydHvFro2v1o)

# Procédure d'installation :

- Afin de pouvoir accéder au Test Technique, qui était un projet effectué sous le framework Laravel, il vous suffit de posséder la librairie basique de Laravel qui est d'avoir PHP et Composer d'installer au préalable.

- Dès que cela est fait effectuer le git clone suivent dans l'emplacement où vous désirez posséder le projet :

```
git clone https://github.com/bonhoureq/softia.git
```

- Ensuite veuillez vous rendre dans le dossier à l'emplacement suivant :

> /softia/Softia

- Afin de pouvoir faire correctement fonctionner le projet, veuillez à mettre en place un ".env" possédant la configuration de la base de donnée MySQL qui a été utilisée au sein de ce projet.

- Nous allons procéder à la création de la base de donnée en vous rendez dans MySQL dès que vous y êtes effectuer la commande suivante :

```
CREATE DATABASE softia;
```

- Dès que cela est fait vous pouvez quitter MySQL et vous rendre dans le ".env" que vous aurez ajouté, rendez vous à la ligne 14 jusqu'à 16 afin de modifier les champs suivent avec votre username et password MySQL :

```
DB_DATABASE=softia
DB_USERNAME=user
DB_PASSWORD=password
```

- Pour terminer vous pouvez désormais créer les données faites au préalable dans un seeders pour avoir accès à des données aléatoires afin de faire des tests, à l'aide de la commande suivante :

> php artisan migrate:fresh --seed

Félicitation vous avez entièrement configuré le projet afin de pouvoir l'utiliser.

# Procédure pour lancer le projet :

- Afin de pouvoir lancer le projet effectuer la commande suivante dès lorsque vous êtes dans le dossier du projet "Softia" :

  > php artisan serv

- Cela vous donnera accès à la base localhost pour vous rendre sur l'application dédiée à la création d'attestation.

Notes : Dans le dossier DumpBaseDeDonnée vous pouvez retrouver l'un des Dump appartenant à la base de donnée étant donné que qu'il y a un seeders donnant des informations totalement aléatoire le Dump sera toujours différent mais si vous désirez posséder le Dump avec les informations actuel il vous suffit de faire un :

> mysqldump -u username -p softia > /(chemin d'accès que vous désirez)/softia.sql

Vous avez désormais dans vos mains l'entière utilisation du projet.
