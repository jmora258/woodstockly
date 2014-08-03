Rails.application.routes.draw do
 

  get '/reviews' => 'reviews#index'

  # form to create and submit new review 
 
  get '/new' => 'reviews#new'

  # create review and display results via POST
  post '/create' => 'reviews#create'



end
