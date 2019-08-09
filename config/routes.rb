Rails.application.routes.draw do
  resources :stocks
  get 'home/index'
  root to: 'stocks#index'
end
