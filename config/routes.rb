Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resource :dashboard, only: [:show]

  resources :greetings, only: [:create]

  root to: "sessions#new"
  get "/sign_up", to: "users#new"
end
