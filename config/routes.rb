Rails.application.routes.draw do

  resources :escapes
  resources :photos
  devise_for :users
  resources :users, only: [:show, :index], controller: :profiles
  resources :charges

  resources :conversations, only: [:create] do
    member do
      post :close
    end
    resources :messages, only: [:create]
  end

  resources :profiles
  root 'homepage#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
