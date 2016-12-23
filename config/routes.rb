Rails.application.routes.draw do
  resources :songs
  resources :authors

  root 'welcome#index'

end