# -GDD-RobinBurnay---Partiel
Partiel de gestion de données


Démarche :

Au centre de la démarche de la création de cette base de données est l'étude des besoins d'un manager. C'est-à-dire, quelles interactions un manager aurait il besoin de réaliser avec la base de données. Voici une courte liste non exhaustive de ces intéractions : 

- ajouter / modifier / supprimer un profil client.
- ajouter / Modifier / supprimer un profil employé.
- vérifier la disponibilité d'une chambre.
- vérifier les caractéristiques de la chambre (type de chambre).
- associer le client à la chambre correspondante.

Ainsi avec cette base de données nous avons toutes les interactions nécéssaires. Chaque table est accessible via une clé étrangère permettant d'obtenir les informations clés de manière optimisée.

Cette étude des besoins permet de définir aisément les axes de recherche utiles et conserver une architecture plus lisible et efficace.


Queries : 

1 : Sélectionner toutes les informations des clients;

2 : Sélectionner le nom et le prénom de tous les employés;
3 : selectionne les titres de poste concernant les employés ayant un Id inférieur à 3;
4 : Sélectionner les informations de toutes les chambres occupées;
5 : Sélectionne le nom, l'emplacement et le nombre de chambres de tous les hôtels;
6 : Sélectionner le nom, le prénom et le salaire de tous les employés dont le titre de poste est "manager";
7 : Pour sélectionner les chambres qui ont été réservées au cours du mois de janvier 2022;
8 : Sélectionner les noms et prénoms des clients occupant une chambre;
9 : Sélectionner les informations de chambre pour les chambres occupées par des clients dont le nom de famille est "Smith";
10 : Sélectionner les noms complets des employés et les informations de chambre pour les chambres occupées entre les dates "2022-01-01" et "2022-12-31";
11 : Selection des employés triés par nom de famille;
12 : Selection du nombre de chambres occupées;
13 : Selection de la moyenne du salaire;
14 : Selection du nombre total de chambres libres par type de chambre;
15 : selectionner le nombre et le numéro de chambre(s) libre(s) où le type de chambre est "accès handicapé";