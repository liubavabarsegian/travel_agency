Rails.application.routes.draw do
  root 'home#schema'
  get 'home/info'
  get 'clients/show'

  post 'clients/query'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
