Rails.application.routes.draw do
  
  resources :bands
  resources :concerts
  
  root 'bands#index'

end
