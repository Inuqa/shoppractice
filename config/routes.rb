Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/new'
  get 'categories/show'
  get 'categories/remove'
  resources :products, only: %i[index show new create remove]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
