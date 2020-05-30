Rails.application.routes.draw do
  root to: "sessions#new"
  resources :schools do
    resources :comments, only: [:create]
  end

  get '/login' => 'sessions#new'
  post '/login'=> 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/users' => 'users#new'
  post '/users'=> 'users#create'
  delete '/users' => 'users#destroy'
end
