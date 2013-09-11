Space::Application.routes.draw do

	# home page
	root to: "static_pages#home"

	# users
	resources :users

	# authenticate
	resources :sessions, only: [:new, :create, :destroy]
		# signup
		match "/signup"		, to: "users#new"
		# signin
		match "/signin"		, to: "sessions#new"
		# signout
		match "/signout"	, to: "sessions#destroy"
end
