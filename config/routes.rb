Rails.application.routes.draw do

  devise_for :users
  devise_for :installs

  root 'main#home'

  get 'my_account', to: 'users#my_account'
  
  post '/posts', to: 'posts#create'  
  
  resources :posts do
    member do
      post 'upvote'
    end
  end
  
  resources :posts, only: [:index, :show, :new, :create]
end
