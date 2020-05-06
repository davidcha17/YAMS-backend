Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show]
  # does restaurant need a new and create because were getting restaurants from a search function? 
  # fixed it by calling a create method in the models to parse all the incoming data 
  resources :lists, only: [:create, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :new, :create] 

  post "/login", to: "users#login"

  get "/persist", to: "users#persist"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end  

