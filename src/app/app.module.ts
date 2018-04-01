import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FlexLayoutModule } from '@angular/flex-layout/';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';

import { SuspectService } from './suspect.service';
import { VehiculeService } from './vehicule.service';
import { AppService } from './app.service';
import { AppRoutingModule } from './app-routing.module';
import { MaterialModule } from './material.module';

import { AppComponent } from './app.component';
import { AccueilComponent } from './accueil/accueil.component';
import { PopupConnexionComponent } from './popup-connexion/popup-connexion.component';
import { VDetailsComponent } from './v-details/v-details.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { SuspectsComponent } from './suspects/suspects.component';
import { SuspectAjoutComponent } from './suspect-ajout/suspect-ajout.component';
import { SuspectDetailsComponent } from './suspect-details/suspect-details.component';
import { SuspectRechercheAvanceeComponent } from './suspect-recherche-avancee/suspect-recherche-avancee.component';
import { VehiculesComponent } from './vehicules/vehicules.component';
import { VAjoutComponent } from './v-ajout/v-ajout.component';
import { VrechercheAvanceeComponent } from './vrecherche-avancee/vrecherche-avancee.component';
import { BodyComponent } from './body/body.component';


@NgModule({
  declarations: [
    AppComponent,
    AccueilComponent,
    PopupConnexionComponent,
    BodyComponent,
    HeaderComponent,
    FooterComponent,
    SuspectsComponent,
    SuspectAjoutComponent,
    SuspectDetailsComponent,
    SuspectRechercheAvanceeComponent,
    VehiculesComponent,
    VAjoutComponent,
    VDetailsComponent,
    VrechercheAvanceeComponent
    ],
  imports: [
    AppRoutingModule,
    BrowserModule,
    BrowserAnimationsModule,
    FlexLayoutModule,
    FormsModule,
    HttpClientModule,
    MaterialModule,
    NoopAnimationsModule,
    ReactiveFormsModule
  ],
  providers: [AppService, SuspectService, VehiculeService],
  bootstrap: [AppComponent],
  entryComponents: [PopupConnexionComponent]
})
export class AppModule { }
