Rails.application.routes.draw do
  root to: 'spices#index'
  resources :spices, only: :index
end
