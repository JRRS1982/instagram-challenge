#this is the main routing file.... it tell Rails how to connect incoming requests to controllers and actions

Rails.application.routes.draw do
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # this creates a CRUD route for images.
  resources :users
  resources :posts
  # this tell rails to map requests to the root of the application to the welcome controllers index action.
  root 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
