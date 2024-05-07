Rails.application.routes.draw do
  devise_for :users
  root to: "courses#index"
  resources :courses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end


# /classes	GET	classes	index
# /classes	GET	classes	index


# /classes/:id	GET	classes	show
# /classes/:id/bookings/new	GET	bookings	new
# /classes/:id/bookings	POST	bookings	create


# /bookings	GET	bookings	index

# /classes/new	GET	classes	new
# /classes	POST	classes	create


# /dashboards	GET	dashboards	index
