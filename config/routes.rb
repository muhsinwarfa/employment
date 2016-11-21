Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'visitors#index'
end
