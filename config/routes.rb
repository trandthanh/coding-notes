Rails.application.routes.draw do
  devise_for :users

  resources :notes, only: [:show, :create, :update, :delete]
  resources :lists, only: [:show, :create, :update, :delete]
  resources :tags, only: [:create, :delete]

  get "results", to: "pages#results"

  root to: 'pages#today'
end
