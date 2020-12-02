Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get  '/login', to: 'sessions#new'
  # post  '/login', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy'

  resources :users, only: %i[create new show]
  resources :events, only: %i[create new show index]
  get 'sessions/new'
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
  root to: 'sessions#new'
  post 'attendance', to: 'events#create_attendance'
end
