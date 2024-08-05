Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  post '/get_csrf_token', to: 'auth_helpers#get_csrf_token'

  resources :products, only: [:new, :create, :update]

  post '/connect_one', to: 'third_party#connect_one'
  post '/connect_two', to: 'third_party#connect_two'
  post '/connect_three', to: 'third_party#connect_three'
end
