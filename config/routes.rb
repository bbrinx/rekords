Rails.application.routes.draw do
  root 'homes#index'
  resources :headers
  resources :footers
  resources :homes

  devise_for :profiles
  
  resources :records
  resources :categories
  resources :groups
  resources :profiles
  resources :application

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
