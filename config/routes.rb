Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  root "posts#index"

  get '/about', to: 'pages#about'

  resources :users

  resources :sessions

  get 'signup',  to: 'users#new', as: 'signup'
  get 'login',  to: 'sessions#new', as: 'login'
  get 'logout',  to: 'sessions#destroy', as: 'logout'

end
