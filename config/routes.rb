Rails.application.routes.draw do
  resources :users
  root 'articles#index'
end
