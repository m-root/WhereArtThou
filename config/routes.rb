Rails.application.routes.draw do

  get 'static_pages/home'

  get 'static_pages/about'

  root 'welcome#index'

  devise_for :users, :controllers => {registrations: 'registrations'}

  resources :users, only: [:show, :index]
