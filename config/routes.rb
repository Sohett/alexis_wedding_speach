Rails.application.routes.draw do

  root to: "votes#new"

  resources :votes, only: [:new, :create]
  resources :stocks, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end