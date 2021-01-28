Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tpics do
    resources :comments, only:[:create, :destroy]
    end
  resources :users, only: :show
  root to: 'tpics#index'
end
