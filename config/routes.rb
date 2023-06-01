Rails.application.routes.draw do
  get "/reserve" => "reserve#top"
  get "reserve/calender" => "reserve#calender"
  get "/ueer/new" => "user#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/about' => "home#about"
  # Defines the root path route ("/")
  # root "articles#index"
  get '/login' => 'user#login'
  get "/new" => 'user#new'
  get '/' => "home#top"
  
end