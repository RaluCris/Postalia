Rails.application.routes.draw do
  get '/posts/funny' , to: 'posts#funny'
  get '/posts/popular', to: 'posts#popular'
  devise_for :users
  resources :posts do
    resources :comments do
      resources :subcomments
    end
  end
  get '/home', to: 'home#home'
  root 'posts#index'

  resources :posts do
    resources :votes, only: [:create,:update, :destroy]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
