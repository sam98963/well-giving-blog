Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  # config/routes.rb
  post '/posts', to: 'posts#create'  
  
  resources :posts do
    member do
      post 'upvote'
    end
  end


  devise_for :users
  devise_for :installs
  root 'main#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
