Rails.application.routes.draw do
  devise_for :users
  resources :posts do
  resources :comments do
    resources :subcomments
  end
  end

  get '/home', to: 'home#home'
  root 'posts#index'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
