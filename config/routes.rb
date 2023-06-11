Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"

  #home
  get "/about" => "home#about"
  get "/" => "home#top"

  #user
  
  get "/new" => "user#new"
  post "new" => "user#create"
  get "/user/new" => "user#new"
  
  get "/login" => "user#login_form"
  post "/login" => "user#login"

  #reserve
  get "/reserve" => "reserve#top"
  get "reserve/calender" => "reserve#calender"
  get "/ueer/new" => "user#new"

  #admin
  get "/admin/usercheck"=> "admin#usercheck"
  get "/admin" => "admin#top"
  
  
end