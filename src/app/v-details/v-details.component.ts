import { Component, OnInit, OnChanges, SimpleChanges } from '@angular/core';
import { ActivatedRoute, Router, ParamMap } from '@angular/router';
import { ActivatedRouteSnapshot } from '@angular/router/src/router_state';
import { Vehicule } from '../vehicule';
import { VehiculeService } from '../vehicule.service';

@Component({
  selector: 'app-v-details',
  templateUrl: './v-details.component.html',
  styleUrls: ['./v-details.component.css']
})
export class VDetailsComponent implements OnInit {

  id: number;
  vehicule: Vehicule = new Vehicule();

  constructor(private vehiculeService: VehiculeService,
              private router: Router,
              private route: ActivatedRoute) { }

  ngOnInit() {
    // affichage des données d'un véhicule à l'initialisation du composant
    this.vehicule = null;
    this.id = +this.route.snapshot.paramMap.get('id');
    this.vehiculeService.getVehicule(this.id).subscribe(
      vehicule => this.vehicule = vehicule
    );
  }

}
