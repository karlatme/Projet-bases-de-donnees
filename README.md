# PROJET BASE DE DONNEES 

 _Le sujet : Sécurité Aérienne_
 -

L'objectif est de construire une base de données regroupant les différents types d'incidents aériens et de les croiser avec les compagnies aériennes, les pays, les années, et bien d'autres informations pour regarder quelles sont les caractéristiques de ces accidents.

_Les contributeurs_
-

* Karl ATME : atme.karl@gmail.com
* Thomas NOEL : 49thomasnoel@gmail.com 

_Les consignes_
-

* Concevoir une base de données multi-tables sous formes normales.
* Peupler la base de données avec au moins (sans être restrictif) les données pertinentes par rapport au sujet d'étude retenu, définir les relations entre les tables.
* Concevoir l'application web.

_Les contraintes impératives_
-

* Utiliser le SGBD postgreSQL.
* Utiliser le framework Django.
* Consigner en temps réel le travail réalisé ( voir blog.txt).

_Description des fichiers du dépôt_
-
* _blog.txt_ : carnet de bord du projet.
* _Datas_ : dossier regroupant l'ensemble des fichiers relatifs aux données (conception de la base de données, netoyage et peuplement). 
  * Modèle conceptuel : Fichier texte expliquant la base de données.
  * create_db.sql : script pgsql de la base de données.
  * Aviationdata : données stockées dans un fichier csv.
  * MPD : Architecture de la base de données.
* _Django_ : contient tous les fichiers necessaire au fonctionnement de l'application.
