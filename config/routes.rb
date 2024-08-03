Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admin/sessions'
  }
  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }
end