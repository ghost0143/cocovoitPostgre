
# 1. Introduction

La plateforme de covoiturage écologique est un projet ambitieux développé dans le cadre du cours RAD (Rapid Application Development) pour l'année scolaire 2023-2024 à HEST (Hautes Études des Sciences et Techniques). L'objectif principal de cette initiative est de promouvoir une mobilité durable en encourageant le partage de trajets entre utilisateurs, tout en contribuant à la réduction de l'impact environnemental. Cette plateforme vise à offrir une solution pratique et économique pour les déplacements quotidiens, mettant l'accent sur l'utilisation de véhicules écologiques. Le projet a été réalisé dans le cadre du cours RAD, un cours orienté vers le développement rapide d'applications, permettant aux étudiants de mettre en pratique leurs connaissances acquises en développement web. Cette plateforme de covoiturage écologique a été choisie comme projet pour combiner les aspects techniques de développement avec des préoccupations sociales et environnementales.

# 2. Technologies Utilisées

Le développement de cette application repose sur les technologies suivantes :
- **Le framework Rails :** choisi pour sa capacité à assurer une mise en œuvre rapide et efficace du projet. Rails offre une structure de projet conventionnelle, basée sur le paradigme de la programmation convention-over-configuration, facilitant ainsi le développement et la maintenance du code.
- **PostgreSQL :** assurant une gestion robuste des données.
- **Git :** le système de gestion de versions utilisé
- **HTML, CSS, et JavaScript :** sont les technologies web classiques employées du côté de l'interface utilisateur. Cette combinaison de technologies a été sélectionnée avec soin pour assurer à la fois la robustesse technique de l'application et une expérience utilisateur fluide et intuitive.

# 3. Fonctionnalités clés

## Inscription et Connexion Sécurisées
Les utilisateurs peuvent créer des comptes sur la plateforme en fournissant des informations de base. La gestion des comptes inclut des mécanismes de sécurité tels que le hachage des mots de passe pour assurer la confidentialité des données personnelles.

## Proposition et Recherche de Trajets
Les utilisateurs conducteurs ont la possibilité de proposer des trajets en spécifiant le point de départ, la destination, l'heure de départ, et le nombre de places disponibles. Les utilisateurs passagers peuvent rechercher des trajets disponibles en spécifiant leur destination et l'heure souhaitée.

## Réservation de Places et Partage des Coûts
Les utilisateurs passagers peuvent réserver une place dans un trajet proposé par un conducteur. De plus, la plateforme facilite le partage équitable des coûts entre les passagers, promouvant ainsi une approche économique et solidaire du covoiturage.

## Profils des Utilisateurs avec Avis
Chaque utilisateur dispose d'un profil où sont répertoriées ses informations de base, ses trajets proposés ou réservés, ainsi que des avis laissés par d'autres utilisateurs. Cette fonctionnalité favorise la confiance et la transparence au sein de la communauté.

## Notifications en Temps Réel
Les utilisateurs reçoivent des notifications en temps réel pour les mises à jour des trajets, les nouvelles réservations, et les évaluations. Cette fonctionnalité améliore l'expérience utilisateur en fournissant des informations pertinentes et en facilitant la communication instantanée.

## Trajets Écologiques avec Indication des Émissions de CO2 Économisées
Les utilisateurs conducteurs peuvent indiquer si leur trajet est écologique en utilisant des véhicules respectueux de l'environnement tels que les véhicules électriques ou hybrides. La plateforme calcule et affiche les émissions de CO2 économisées grâce au covoiturage, sensibilisant ainsi les utilisateurs à l'impact environnemental positif de leurs actions. Ces fonctionnalités clés ont été intégrées pour offrir une expérience complète et conviviale aux utilisateurs de la plateforme de covoiturage écologique. Elles s'alignent avec les objectifs du projet, visant à faciliter le covoiturage, encourager l'utilisation de véhicules écologiques, assurer la sécurité des utilisateurs, et calculer l'impact environnemental de manière transparente.

# 4. User Stories et Cas d'Utilisation
Lors de la conception initiale du projet, plusieurs user stories et cas d'utilisation ont été identifiés pour définir les besoins des utilisateurs et les fonctionnalités attendues de la plateforme de covoiturage écologique. Voici un récapitulatif des principaux scénarios utilisateur et comment ils ont été implémentés dans le cadre du développement du projet :
## 4.1 Inscription et Connexion
-	**User Story** : En tant qu'utilisateur, je veux créer un compte sur la plateforme en fournissant des informations de base et me connecter de manière sécurisée.
-	**Implémentation** : Un formulaire d'inscription a été mis en place, collectant les informations nécessaires. La gestion des sessions utilisateur garantit une connexion sécurisée, et les mots de passe sont stockés de manière sécurisée via le hachage.
## 4.2 Proposition de Trajets
-	**User Story** : En tant qu'utilisateur conducteur, je veux pouvoir proposer un trajet en spécifiant le point de départ, la destination, l'heure de départ, et le nombre de places disponibles.
-	**Implémentation** : Une interface conviviale permet aux conducteurs de créer des trajets en fournissant les détails requis. Ces informations sont ensuite stockées dans la base de données, rendant les trajets disponibles pour la recherche des utilisateurs passagers.
## 4.3 Recherche de Trajets 
-	**User Story** : En tant qu'utilisateur passager, je veux pouvoir rechercher des trajets disponibles en spécifiant ma destination et l'heure souhaitée.
-	**Implémentation** : Une fonction de recherche a été implémentée, permettant aux utilisateurs passagers de filtrer les trajets en fonction de leur destination et de l'heure souhaitée, facilitant ainsi la recherche de trajets correspondant à leurs besoins.
## 4.4 Réservation de Places
-	**User Story** : En tant qu'utilisateur passager, je veux pouvoir réserver une place dans un trajet proposé par un conducteur.
-	**Implémentation** : Un système de réservation a été développé, permettant aux utilisateurs passagers de confirmer leur participation à un trajet spécifique. Cette fonctionnalité met à jour automatiquement la disponibilité des places dans le trajet.
## 4.5 Profil et Avis
-	**User Story** : En tant qu'utilisateur, je veux pouvoir consulter le profil d'un conducteur, voir ses avis et laisser mon propre avis après un trajet.
-	**Implémentation** : Des profils d'utilisateurs ont été créés, répertoriant les informations essentielles et les avis associés. Les utilisateurs peuvent laisser des commentaires après un trajet, favorisant la transparence et la confiance au sein de la communauté.
## 4.6 Partage des Coûts
-	**User Story** : En tant qu'utilisateur, je veux pouvoir partager les coûts du trajet de manière équitable avec les autres passagers.
-	**Implémentation** : Un mécanisme de partage des coûts a été intégré, permettant aux utilisateurs de définir les règles de partage ou d'utiliser des calculs automatiques basés sur différents critères.
## 4.7 Notifications en Temps Réel
-	**User Story** : En tant qu'utilisateur, je veux recevoir des notifications en temps réel pour les mises à jour des trajets, les nouvelles réservations, et les évaluations.
-	**Implémentation** : Un système de notifications en temps réel a été mis en place, utilisant des technologies telles que les sockets pour informer les utilisateurs des changements pertinents.
Ces user stories et cas d'utilisation ont été soigneusement implémentés pour répondre aux besoins fonctionnels de la plateforme de covoiturage écologique, offrant ainsi une expérience utilisateur complète et intuitive.

# 6. Les limites de l’application
-	**Inscription et Connexion Sécurisées** : Les utilisateurs peuvent créer des comptes sur la plateforme en fournissant des informations de base et peuvent se connecter avec l’adresse email et le mot de passe. Mais les autres informations comme nom, prénom, sexe rôle. Alors on peut se connecter en créant un compte mais on ne peut pas voir les privilèges du user conducteur. Du coup vous pouvez vous connecter avec les informations suivantes :
Passager : password : ghost0143 et email sam@gmail.com
Passager : password : ghost0143 et email wis@gmail.com

-	**Profils des Utilisateurs avec Avis** : Fonctionnalités non implémenté 
-	**Notifications en Temps Réel** : Fonctionnalités non implémenté 
-	**Trajets Écologiques avec Indication des Émissions de CO2 Économisées** : Fonctionnalités non implémenté 
# 7. Livrable 

-	**Code Source sur GitHub** : Disponible sur le lien 
-	**Rapport de Projet** : Disponible à la racine du projet
-	**Démo en Ligne1** : disponible sur le lien https://youtu.be/pDY78gMW-_0
-	**Démo en Ligne2** : disponible sur le lien https://youtu.be/rdcMCipxEZc
-	**Liste des Bugs Connus** : Confer rapport au point 6

-	**La base de données** : Disponible à la racine du projet (bd.sql) importable avec la commande 
C:\Program Files\PostgreSQL\{version}\bin\pg_dump" -U votre_utilisateur -h localhost -d nom_de_la_base_de_donnees < "chemin/vers/le/fichier.sql "
Nom utilisateur : postgres
	Mot de passe : ghost0143
	Nom de la base de données : cocovoit
# 8. Conclusion
La réalisation de la plateforme de covoiturage écologique dans le cadre du cours de RAD pour l'année scolaire 2023-2024 à HEST représente un accomplissement significatif, combinant des aspects techniques de développement web avec des préoccupations sociales et environnementales
Le projet a été conçu pour promouvoir une mobilité durable en encourageant le covoiturage, mettant particulièrement l'accent sur l'utilisation de véhicules écologiques. Grâce au framework Rails, à PostgreSQL, Git, HTML, CSS, et JavaScript, une architecture robuste a été mise en place pour garantir à la fois la solidité technique de l'application et une expérience utilisateur intuitive.
La plateforme de covoiturage écologique représente une première étape importante vers une mobilité plus durable, avec des opportunités d'amélioration à explorer dans l'avenir. Ce projet reflète notre engagement envers l'innovation, la durabilité et l'excellence dans le développement d'applications web.

