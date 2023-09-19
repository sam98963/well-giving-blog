Rails.application.routes.draw do
  resources :posts
  devise_for :users
  devise_for :installs
  root 'main#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
