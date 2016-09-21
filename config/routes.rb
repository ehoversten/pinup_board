Rails.application.routes.draw do
  resources :daily_boards
  get '/landing' => 'pages#landing'

  # root 'pages#landing'
  root 'daily_boards#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
