Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :create, :destroy]
  resources :cart_plants, only: [:index, :create, :destroy, :show]
  resources :carts,  only: [:index, :show]
  resources :plants, only: [:index, :show]
  resources :users, only: [:create, :show, :index]

  post '/checkout' => 'carts#checkout'
  
end
