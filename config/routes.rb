Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get  '/login', to: 'sessions#new'
 # post  '/login', to: 'sessions#create'
  #delete '/logout', to: 'sessions#destroy'
  
  resources :users, only: [:create, :new, :show]

  get 'sessions/new'


  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'



end
