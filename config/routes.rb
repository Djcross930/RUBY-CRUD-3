Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/shoes" => "shoes#index"
  get "/shoes/:id" => "shoes#show"
  post "/shoes" => "shoes#create"
  patch "/shoes/:id" => "shoes#update"
  delete "/shoes/:id" => "shoes#destroy"
end
