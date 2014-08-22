require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
    resources :users, only: [:new, :create]

    constraints Monban::Constraints::SignedIn.new do
      get "/", to: "dashboards#show"
      resource :dashboard, only: [:show]
      resources :greetings, only: [:new, :create]
    end
    root to: "sessions#new"
  end
