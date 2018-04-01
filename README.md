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
    commande: **git clone https://github.com/DethierY/Front-Equipe-CRUD.git**
  * Ouvrir une console de commande dans le dossier **Front-Equipe-CRUD** chargé:  
    commande: **npm install**
    
  ### Pour le back:
  
   * Dans Wokbench:
      menu **File/Run SQL script...** et choisir le fichier **gedesaft_v2.sql** dans le dossier **Front-Equpe-CRUD/Complements**  
      cliquer sur **Data Import/Restore**, sélectionner le fichier **data_gedesaft_v2.sql** dans le dossier **Front-Equipe-CRUD/Complements**  
      cliquer sur **Start Import**
  
## Lancement:

  * Dans workbench, dans le navigateur, section **Schemas**:  
    double cliquer sur **gedesaft_v2**
  * Ouvrir une console de commande dans le dossier **Front-Equipe-CRUD/Complements**  
    commande: **java -jar co.simplon.GEDESAFTv2-0.0.1-SNAPSHOT.jar**
  * Ouvrir une console de commande dans le dossier **Front-Equipe-CRUD**  
    commande: **ng-serve -o**
    
    
  
  
