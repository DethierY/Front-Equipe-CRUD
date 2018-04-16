import { Component, OnInit } from '@angular/core';
import { AppService } from '../app.service';
import { ActivatedRoute, Router, ParamMap } from '@angular/router';
import { ActivatedRouteSnapshot } from '@angular/router/src/router_state';
import { VehiculeService } from '../vehicule.service';
import { Vehicule } from '../vehicule';

@Component({
  selector: 'app-vehicules',
  templateUrl: './vehicules.component.html',
  styleUrls: ['./vehicules.component.css']
})
export class VehiculesComponent implements OnInit {

  listVehicule: Vehicule[] = [];

  constructor(  private route: ActivatedRoute,
                private vehiculeService: VehiculeService,
                private router: Router) { }

  ngOnInit() {
    // génère la liste des véhicules à l'initiation du module
    this.vehiculeService.getListVehicule().subscribe(listVehicule => this.listVehicule = listVehicule);
  }

  // renvoie sur l'afichage du véhicule sélectionner dans la liste
  afficherDetailVehicule(vehicule) {
    this.router.navigate(['v-details', vehicule.id_vehicule], {relativeTo: this.route});
  }

  // renvoie sur le formulaire de création d'un nouveau véhicule
  afficherAjoutComponent() {
    this.router.navigate(['v-ajout'], {relativeTo: this.route});
  }

  // renvoie sur le formulaire de filtrage de la liste de véhicule
  afficherRechercheComponent() {
    this.router.navigate(['vrecherche-avancee'], {relativeTo: this.route});
  }

  // méthode utilisée pour remettre à jour la liste depuis le formulaire de création de véhicule
  mettreListeAJour() {
    this.vehiculeService.getListVehicule().subscribe(listVehicule => this.listVehicule = listVehicule);
  }

}
