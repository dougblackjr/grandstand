Rails.application.routes.draw do
  resources :setlists
  resources :media
	devise_for :users
	resources :songs
	resources :authors

	authenticated :user do
		root "songs#index", as: "authenticated_root"
	end

	root "welcome#index"

end