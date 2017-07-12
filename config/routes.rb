Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/index'
  root 'static_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :reviews
  get 'movies/:tmdb_id', to: 'movies#show', as: :movies

  resources :users, only: :show
end
