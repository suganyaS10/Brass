Rails.application.routes.draw do

  devise_for :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'projects#index'

  resources :users_admin, :controller => 'users'

  resources :projects

  resources :tickets
  resources :products
  resources :sprints
end
