Rails.application.routes.draw do
  resources :cidades
  resources :tipos
  resources :cors
  resources :racas
  delete 'sessions/new', to:'sessions#destroy', as: :logout
  get 'sessions/new', to: 'sessions#new', as: :authentication_form
  post 'sessions', to: 'sessions#create', as: :authentication
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
