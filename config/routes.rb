Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :new, :show]

  resources :events, only: [:create, :new, :show, :index]

  root 'users#new'
end
