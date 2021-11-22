# frozen_string_literal: true
Rails.application.routes.draw do
  resources :fights do
    resources :hits
  end
  get '/fights/:id/run', to: 'fights#run', as: 'run_fight'
  resources :characters
  resources :images
  root 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
