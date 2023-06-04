Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"

  #admin
  get "/admin/usercheck"=> "admin#usercheck"
  get "/admin" => "admin#top"

  #reserve
  get "/reserve" => "reserve#top"
  get "reserve/calender" => "reserve#calender"
  get "/ueer/new" => "user#new"

  #user
  get "/user/new" => "user#new"
  get "/login" => "user#login"
  get "/new" => "user#new"
  
  #home
  get "/about" => "home#about"
  get "/" => "home#top"
  
end