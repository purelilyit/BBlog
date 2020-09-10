Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  # devise_for :users
  resources :cities
  resources :pens
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :portfolios do
    put :sort, on: :collection
  end

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  # root to: 'portfolios#index'
  root to: 'pages#home'
end
