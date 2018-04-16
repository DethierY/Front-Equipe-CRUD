import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';

import { AppComponent } from './app.component';
import { AccueilComponent } from './accueil/accueil.component';
import { PopupConnexionComponent } from './popup-connexion/popup-connexion.component';
import { VehiculesComponent } from './vehicules/vehicules.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { BodyComponent } from './body/body.component';
import { VrechercheAvanceeComponent } from './vrecherche-avancee/vrecherche-avancee.component';
import { VDetailsComponent } from './v-details/v-details.component';
import { VAjoutComponent } from './v-ajout/v-ajout.component';
import { SuspectsComponent } from './suspects/suspects.component';
import { SuspectRechercheAvanceeComponent } from './suspect-recherche-avancee/suspect-recherche-avancee.component';
import { SuspectDetailsComponent } from './suspect-details/suspect-details.component';
import { SuspectAjoutComponent } from './suspect-ajout/suspect-ajout.component';

const routes: Routes = [
  {path: '', redirectTo: '/accueil', pathMatch: 'full' },
  {path: 'accueil', component: AccueilComponent},
  {path: 'vehicules', component: VehiculesComponent, children: [
    {path: 'v-edit/:id', component: VAjoutComponent},
    {path: 'v-details/:id', component: VDetailsComponent},
    {path: 'vrecherche-avancee', component: VrechercheAvanceeComponent},
    {path: 'v-ajout', component: VAjoutComponent},
  ]},
   {path: 'suspect', component: SuspectsComponent, children: [
     {path: 'create', component: SuspectAjoutComponent},
     {path: 'suspect-rechercheA', component: SuspectRechercheAvanceeComponent},
     {path: 'detail/:id', component: SuspectDetailsComponent},
   ]},
];

@NgModule({
  imports: [
    CommonModule,
    RouterModule.forRoot(routes, {enableTracing: true})
  ],
  exports: [RouterModule],
})

export class AppRoutingModule { }
