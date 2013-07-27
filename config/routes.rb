Myprivacyplan::Application.routes.draw do
  
  match '/help',      to: 'static_pages#help',     via: 'get'
  match '/about',     to: 'static_pages#about',    via: 'get'
  match '/contact',   to: 'static_pages#contact',  via: 'get'
  match '/search',    to: 'static_pages#search',   via: 'get'
  match '/terms',     to: 'static_pages#terms',    via: 'get'
  match '/privacy',   to: 'static_pages#privacy',  via: 'get'
  match '/security',  to: 'static_pages#security', via: 'get'  


  get 'tags/:tag', to: 'ideas#index', as: :tag
  
  resources :comments
  resources :ideas


  authenticated :user do
    root :to => redirect('/ideas')
  end
  root :to => redirect('/ideas')
  devise_for :users
  resources :users
end