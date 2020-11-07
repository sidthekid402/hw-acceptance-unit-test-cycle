Rottenpotatoes::Application.routes.draw do
  get 'movies/find_similar', to: 'movies#find_similar'

  resources :movies
 
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  
  match 'movies/:id/find_similar', to: 'movies#find_similar', via: [:get, :post], as: 'search_directors'
end
