Rails.application.routes.draw do
  resources :feeds
  root 'users#new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :feeds do
     collection do
        post :confirm
      end
    end
  end
