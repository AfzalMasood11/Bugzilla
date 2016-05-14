Rails.application.routes.draw do
  resources :bugs

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
