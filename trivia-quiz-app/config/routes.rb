Rails.application.routes.draw do
  
  
  devise_for :users
  root controller: :home, action: :index
  resources :accessdenied
  resources :quiz_rooms
  resources :categories
  resources :questions  
  resources :answers
  resources :waitingrooms
  resources :playgames
  resources :playquizes
  resources :results
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
