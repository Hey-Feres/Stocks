Rails.application.routes.draw do
  resources :stocks
  get 'home/index'
  root to: 'home#index'
end
