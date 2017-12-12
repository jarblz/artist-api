Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" } do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  namespace :api, defaults: { format: 'json' } do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: :true) do
      get 'artists', to: 'artists#index'
      get '/search', to: 'artists#search'
      # TODO: add the rest of the CRUD operations for the artists resource
    end
  end


end
