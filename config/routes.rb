Rails.application.routes.draw do
  
  get 'home/index'
  root to: "home#index"

  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :clubs
  resources :games
  
  get '/members/:id', to: 'members#show', as: 'member'


end
