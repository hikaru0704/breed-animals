Rails.application.routes.draw do
  root to: 'static_pages#login'
  get 'signup', to: 'users#new'
  get 'login' , to: 'static_pages#login'
  post 'login', to: 'static_pages#create'
  delete 'logout', to: 'static_pages#destroy'
  
  resources :users
end
