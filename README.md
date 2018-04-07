# DEPLOIEMENT

## Prérequis

  ### Général:

  * Git

  ### Pour le front:

  * Node.js
  * Angular.cli

  ### pour le back:

  * Java 1.8
  * Maven
  * MySql
  * Workbench
  
## Installation

  ### Pour le Front:
  
  * Cloner le repository **Front-Equipe-CRUD**:  
    dans l'invite de commande: **git clone https://github.com/DethierY/Front-Equipe-CRUD.git**
  * Ouvrir une invite de commande dans le dossier **Front-Equipe-CRUD** chargé:  
    commande: **npm install**
    
  ### Pour le back:
  
   * Dans Wokbench:
      menu **File/Run SQL script...** et choisir le fichier **gedesaft_v2.sql** dans le dossier **Front-Equpe-CRUD/Complements**  
      cliquer sur **Data Import/Restore**, sélectionner le fichier **data_gedesaft_v2.sql** dans le dossier **Front-Equipe-CRUD/Complements**  
      cliquer sur **Start Import**
   **ATTENTION!** les identifiant et mot de passe pour accéder à la base de données configurés dans le projet back (fichier **co.simplon.GEDESAFTv2-0.0.1-SNAPSHOT.jar** sont admin / admin. Si vous désirez configurer les votres, il faut pour cela récupérer le projet back (commande: **git clone https://github.com/DethierY/Back-Equipe-CRUD.git**), puis ouvrir le fichier **Back-Equipe-CRUD/src/main/resources/application.properties** avec un éditeur de texte, puis changer les valeurs des variables **spring.datasource.username** et **spring.datasource.password**. Enfin, dans le dossier **Back-Equipe-CRUD**, ouvrez une invite de commande et passez la commande **mvn clean install**.
  
## Lancement:

  * Dans workbench, dans le navigateur, section **Schemas**:  
    double cliquer sur **gedesaft_v2**
  * Ouvrir une invite de commande dans le dossier **Front-Equipe-CRUD/Complements**  
    commande: **java -jar co.simplon.GEDESAFTv2-0.0.1-SNAPSHOT.jar**
    **ATTENTION!** Si vous avez modifiez le fichier **application.properties** remplacez le fichier **co.simplon.GEDESAFTv2-0.0.1-SNAPSHOT.jar** du dossier **Front-Equipe-Crud/Complements** par celui du dossier **Back-Equipe-CRUD/target** avant d'ouvrir l'invite de commande.
  * Ouvrir une invite de commande dans le dossier **Front-Equipe-CRUD**  
    commande: **ng-serve -o**
    
    
  
  
