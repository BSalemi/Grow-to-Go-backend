Rails.application.routes.draw do
  resources :cart_plants
  resources :carts
  resources :plants
  resources :users, only: [:create, :show]
  
end
