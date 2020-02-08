Rails.application.routes.draw do
  devise_for :users
  root controller: :quiz_rooms, action: :index
  resources :quiz_rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
