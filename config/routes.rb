Rails.application.routes.draw do
  devise_for :users
  root  'messages#index'
  resources :users, only: [:edit, :update]
  resources :groups, onry: [:index, :new, :create, :edit, :update]
end
