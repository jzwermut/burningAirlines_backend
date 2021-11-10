Rails.application.routes.draw do
  resources :seats
  resources :reservations
  resources :flights
  resources :planes
  resources :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
