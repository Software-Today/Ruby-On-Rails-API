Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :posts
      resources :users
      post '/login', to: 'auth#create'
          get '/current_user', to: 'auth#show'
          post '/sign_up', to: 'users#create'
    end
  end
end