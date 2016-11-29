Rails.application.routes.draw do
  
  resources :users
  resources :jobs
  resources :types
  resources :roles
  resources :sessions , only: [:new , :create , :destroy]

  root 'visitors#index' 
  get 'sessions/new' => 'sessions#new', as: :login
  delete 'sessions/:id' => 'sessions#destoy', as: :logout
  get 'users/new' => 'users#new', as: :signup



  
  

  
end
