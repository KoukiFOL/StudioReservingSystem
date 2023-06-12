Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"

  #home
  get "/about" => "home#about"
  get "/" => "home#top"

  #user
  get "/new" => "user#signup"
  post "/new" => "user#new"

  get "/login" => "user#login_form"
  post "/login" => "user#login"

  get "/edit" => "user#edit_form"
  post"edit" => "user#update"

  get "/logout" => "user#logout"
  post "/logout" => "user#logout"

  #reserve
  get "/reserve" => "reserve#top"
  get "reserve/calender" => "reserve#calender"
  get "/ueer/new" => "user#new"

  #admin
  get "/admin/usercheck"=> "admin#usercheck"
  get "/admin" => "admin#top"
  
end