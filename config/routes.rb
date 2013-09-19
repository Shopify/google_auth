Rails.application.routes.draw do
  get '/login', :to => 'sessions#new', :as => :login
  post '/auth/g/callback', :to => 'sessions#create'
  post '/auth/failure', :to => 'sessions#failure'
end
