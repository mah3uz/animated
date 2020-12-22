Rails.application.routes.draw do
  root 'gifs#index'
  resources :gifs
  get 'tag/*tag', to: 'gifs#by_tag', as: :gif_by_tag
  resources :users, only: [:index, :show]

  devise_for :users

  resources :articles do
    resources :comments
  end

  get '/home', to: 'landing_page#index', as: 'home'
end
