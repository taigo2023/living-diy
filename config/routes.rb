# routes.rb
Rails.application.routes.draw do
  get 'home/index'
  devise_for :admins, controllers: {
    sessions: 'admin/sessions'
  }
  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }
  root 'home#index'

  namespace :admin do
    resources :products, only: %i[index show new create edit update]
  end

  scope module: :user do
    resources :products, only: %i[index show]
  end 
 
  get '/up/', to: 'up#index', as: :up
  get '/up/databases', to: 'up#databases', as: :up_databases
  get '/site.webmanifest', to: 'application#manifest'
end
