Rails.application.routes.draw do

  # Api Section
  namespace :api do
    resources :teams
  end

  resources :teams
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
