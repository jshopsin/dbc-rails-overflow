Rails.application.routes.draw do
  root to: 'questions#index'

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  resources :questions do
    resources :answers
  end

  # resources :comments
end
