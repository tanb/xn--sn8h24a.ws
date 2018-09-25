import { NgModule } from '@angular/core';
import { Routes, Route, RouterModule } from '@angular/router';
import { ProfileComponent } from 'src/app/profile/profile.component';
import { SettingsComponent } from 'src/app/settings/settings.component';
import { PageNotFoundComponent } from 'src/app/page-not-found/page-not-found.component';
import { ArticleComponent } from 'src/app/article/article.component';
import { ArticleListComponent } from 'src/app/article-list/article-list.component';

import { NamedRoutes } from './named-route';

export const routes: NamedRoutes = [
  { path: '', component: ProfileComponent, name: 'top' },
  { path: 'settings', component: SettingsComponent, name: 'settings' },
  { path: 'article', component: ArticleListComponent, name: 'articleList' },
  { path: 'article/:id', component: ArticleComponent, name: 'article' },
  { path: '404', component: PageNotFoundComponent, name: 'not_found' },
  { path: '**', component: PageNotFoundComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class RoutingModule {
}
