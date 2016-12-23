Rails.application.routes.draw do
  devise_for :users
  resources :songs
  resources :authors

  root 'welcome#index'

end