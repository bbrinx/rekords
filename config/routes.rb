Rails.application.routes.draw do
  resources :records
  resources :categories
  resources :groups
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
