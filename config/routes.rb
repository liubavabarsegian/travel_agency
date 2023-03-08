Rails.application.routes.draw do
  
  root 'home#schema'
  get 'home/info'
  get 'clients/show'
  get 'workers/show'
  get 'hotels/show'
  get 'trips/show'

  post 'clients/query'
  post 'clients/add_data'
  post 'workers/query'
  post 'hotels/query'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
