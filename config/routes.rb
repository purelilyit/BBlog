Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  # devise_for :users
  resources :cities
  resources :pens
  resources :portfolios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'portfolios#index'
end
