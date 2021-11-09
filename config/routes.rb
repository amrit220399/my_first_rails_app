Rails.application.routes.draw do
  resources :vehicles
  resources :owners
  resources :employees
  resources :libraries
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/index'
  root to:'employees#index'
end
