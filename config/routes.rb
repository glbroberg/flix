Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'movies#index'
  
  # get '/movies' => 'movies#index'
  # get '/movies/new' => 'movies#new'
  # get '/movies/:id' => 'movies#show', as: 'movie'
  # delete '/movies/:id' => 'movies#destroy'
  # get '/movies/:id/edit' => 'movies#edit', as: 'edit_movie'
  # patch '/movies/:id' => 'movies#update'
  # post '/movies' => 'movies#create'

  # Rails Convention to replace the above
  resources :movies


end
