Rails.application.routes.draw do
 get 'users/show'

resources :carts, only:[:create, :show, :destroy]
resources :items, only: [:show, :index]
resources :charges
resources :orders
root 'items#index'
  devise_for :users
 devise_scope :user do
     get '/users/sign_out'=> 'devise/sessions#destroy'
 end

  resources :charges
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
