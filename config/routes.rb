Rails.application.routes.draw do
  get 'notifications/index'
  devise_for :users
  root "users#index"
  resources :users, :only => [:index, :show]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
