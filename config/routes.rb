Rails.application.routes.draw do
  get 'dashboards/index'
  get 'stories/mypicstories', as: 'my_picstories'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  patch 'user/:id', to: 'users#update', as: 'users'
  resources :stories
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
