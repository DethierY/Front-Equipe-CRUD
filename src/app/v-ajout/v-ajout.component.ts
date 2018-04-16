import { Component, OnInit } from '@angular/core';
import { MatFormFieldModule } from '@angular/material/form-field';
import { VehiculeService } from '../vehicule.service';
import { Vehicule } from '../vehicule';
import { NgForm, FormsModule } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import { Input } from '@angular/core';
import { VehiculesComponent} from '../vehicules/vehicules.component';

@Component({
  selector: 'app-v-ajout',
  templateUrl: './v-ajout.component.html',
  styleUrls: ['./v-ajout.component.css']
})
export class VAjoutComponent implements OnInit {

  vehicule: Vehicule = new Vehicule();
  id: number;
  editing: boolean;

  // valeurs de la liste déroulante
  listTypeVehicule = [
    {value: 'voiture', viewValue: 'voiture'},
    {value: 'moto', viewValue: 'moto'},
    {value: 'scooter', viewValue: 'scooter'},
    {value: 'camion', viewValue: 'camion'},
    {value: 'camionnette', viewValue: 'camionnette'},
    {value: 'autocar', viewValue: 'autocar'}
  ];

  constructor(private vehiculeService: VehiculeService,
              private vehiculesComponent: VehiculesComponent,
              private  router: Router,
              private  route: ActivatedRoute) { }

  ngOnInit() {
    // si le composant est invoqué depuis le bouton de création, le formulaire est vide
    // si le composant est invoqué depuis l'affichage d'un véhicule, le formulaire est prérempli
    const urlSegment = this.route.snapshot.url[0];
    if (urlSegment && urlSegment.path !== 'v-ajout') {
      this.id = +this.route.snapshot.paramMap.get('id');
        this.vehiculeService.getVehicule(this.id).subscribe(
          vehicule => this.vehicule = vehicule
        );
      this.editing = true;
    } else {
      this.editing = false;
    }
  }

  onSubmit() {
    // si on est en édition, édite le véhicule avec les données du formulaire
    // puis renvoie vers la fiche du véhicule avec les données modifiées
    // si on est en création, crée un véhicule avec les données du formulaire,
    // puis renvoie vers sa fiche détaillée.
    // Dans les deux cas, remet l'affichage de la liste à jour
    if (this.editing) {
      this.vehiculeService.updateVehicule(this.vehicule).subscribe(
        newVehicule => {
          this.vehiculesComponent.mettreListeAJour();
        }
      );
      this.router.navigate(['../../v-details', this.vehicule.id_vehicule], {relativeTo: this.route});
    } else {
      this.vehiculeService.createVehicule(this.vehicule).subscribe(
        newVehicule => {
          this.router.navigate(['../v-details', newVehicule.id_vehicule], {relativeTo: this.route});
          this.vehiculesComponent.mettreListeAJour();
        }
      );
    }
  }

}
