Rails.application.routes.draw do
  devise_for :users
  root to: 'spices#index'
  resources :spices, only: :index
end
