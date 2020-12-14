Rails.application.routes.draw do
  root 'gifs#index'
  resources :gifs

  devise_for :users

  resources :articles do
    resources :comments
  end
end
