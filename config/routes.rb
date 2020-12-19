Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  resources :products, only: %i[index show new create destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
