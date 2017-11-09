Rails.application.routes.draw do

  get 'inbox/index'
  get 'homepage/index'

  resources :escapes do
    resources :charges, only: [:new, :create]
  end

  resources :photos
  devise_for :users
  resources :users, only: [:show, :index], controller: :profiles

  resources :conversations, only: [:create] do
    member do
      post :close
    end
    resources :messages, only: [:create]
  end

  root 'escapes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
