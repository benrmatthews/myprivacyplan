Myprivacyplan::Application.routes.draw do
  
  get "static_pages/home"

  get "static_pages/help"

  get "static_pages/about"

  get "static_pages/contact"

  get "static_pages/search"

  get "static_pages/terms"

  get "static_pages/privacy"

  get "static_pages/security"

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