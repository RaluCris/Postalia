Rails.application.routes.draw do
  devise_for :users
  resources :posts do
  resources :comments do
    resources :subcomments
  end
  end

  get '/home', to: 'home#home'
  root 'posts#index'

  resources :posts do
  resources :votes, only: [:create, :destroy]
end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
