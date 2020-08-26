Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  get '/about', to: 'posts#about'
  resources :admins, only: [:index]
  resources :posts do
    resources :sections
    resources :images
  end
end
