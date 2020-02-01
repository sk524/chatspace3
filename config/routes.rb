Rails.application.routes.draw do
  devise_for :users
  root  'messages#index'
  resources :users, only: [:edit, :update]
  resources :groups, onry: [:new, :create, :edit, :update]
    resources :messages, onry: [:index, :create]
end
