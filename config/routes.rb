Rails.application.routes.draw do
  resources :cart_plants
  resources :carts
  resources :plants, only: [:index, :show]
  resources :users, only: [:create, :show]
  
end
