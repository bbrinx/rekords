Rails.application.routes.draw do

  root to: 'homes#index'

  devise_for :profiles

  resources :headers
  resources :footers
  resources :sidebar
  resources :homes

  resources :records
    resources :new_record
  resources :categories
    resources :new_category
  resources :groups
  resources :profiles
  resources :application

# profiles

  resources :new_profile_session
  resources :new_profile_registration

  resources :destroy_profile_session

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
