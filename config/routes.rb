Rails.application.routes.draw do
  root 'home#schema'
  get 'home/info'

  get 'clients/show'
  get 'workers/show'
  get 'hotels/show'
  get 'trips/show'
  get 'countries/show'
  get 'cities/show'

  post 'clients/query'
  post 'workers/query'
  post 'hotels/query'
  post 'countries/query'
  post 'cities/query'

  post 'clients/add_data'
  post 'workers/add_data'
  post 'countries/add_data'
  post 'cities/add_data'
  post 'hotels/add_data'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
