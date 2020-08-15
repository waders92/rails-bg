Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :admins, only: [:index]
  resources :posts do
    resources :sections
  end
end
