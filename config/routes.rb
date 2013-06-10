Myprivacyplan::Application.routes.draw do
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