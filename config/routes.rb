Rails.application.routes.draw do
  get 'stock/show'
  get 'home/index'
  root to: 'home#index'
end
