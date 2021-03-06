Rails.application.routes.draw do
  resources :users do 
    resources :articles
  end

  resources :articles
  resources :categories
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  resources :friendships
  root 'home#index'

end
