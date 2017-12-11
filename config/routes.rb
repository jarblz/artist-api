Rails.application.routes.draw do
  
  resources :artists

  root 'home#index'
  
  devise_for :users
  
end
