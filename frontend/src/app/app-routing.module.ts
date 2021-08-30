import { WhatisobservatoryComponent } from './views/whatisobservatory/whatisobservatory.component';
import { ObservatoryComponent } from './views/observatory/observatory.component';
import { NewsComponent } from './views/news/news.component';
import { PartnersComponent } from './views/partners/partners.component';
import { ContactComponent } from './views/contact/contact.component';
import { HomeComponent } from './views/home/home.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: '',
    component: HomeComponent
  },
  {
    path: 'contact',
    component: ContactComponent
  },
  {
    path: 'partners',
    component: PartnersComponent
  },
  {
    path: 'news',
    component: NewsComponent
  },
  {
    path: 'observatory',
    component: ObservatoryComponent
  },
  {
    path: 'whatsisobservatory',
    component: WhatisobservatoryComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
