Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root to: "home#index"

  # Defines login and logout routes
  # get "/login", to: "sessions#new"
  # post "/login", to: "sessions#create"
  # delete "/logout", to: "sessions#destroy"

  # Defines signin and signup routes
  resources :users, only: [:new, :create]

  # Defines the routes for the sessions controller
  # resources :sessions, only: [:new, :create, :destroy]
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  # Defines the routes for the chatroom controller
  resources :chatrooms, param: :slug
end
