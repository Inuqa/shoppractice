Rails.application.routes.draw do
  root 'users#index'
  resources :users
  resources :products
  resources :sessions, only: %i[new create destroy]
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
