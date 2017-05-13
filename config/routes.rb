Rails.application.routes.draw do
  root :to => 'home#index'
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  devise_for :users
  resources :users
  resources :announcements

  resources :vehicles
  resources :spares
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
