GoogleAuth::Engine.routes.draw do
  match '/login', :to => 'sessions#new', :as => :login
  match '/auth/g/callback', :to => 'sessions#create'
  match '/auth/failure', :to => 'sessions#failure'
end
