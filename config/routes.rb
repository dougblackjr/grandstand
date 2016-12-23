Rails.application.routes.draw do
	devise_for :users
	resources :songs
	resources :authors

	authenticated :user do
		root "songs#index", as: "authenticated_root"
	end

	root "welcome#index"

end