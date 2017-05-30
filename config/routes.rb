Rails.application.routes.draw do

  # Api Section
  namespace :api do
    resources :teams
    resources :matches
  end

  get '/howitworks', to: 'hiw#index'
  resources :teams
  resources :matches
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'matches#index'
end
