Rails.application.routes.draw do
  


  root 'sessions#new' 
  get 'sessions/new' => 'sessions#new', as: :login
  get 'sessions/destroy' => 'sessions#destoy', as: :logout
  get 'users/new' => 'users#new', as: :signup
  resources :users
  resources :jobs
  resources :types
  resources :roles
  

  
end
