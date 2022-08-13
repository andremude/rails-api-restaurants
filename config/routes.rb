Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :restaurants, only: [ :index, :show, :update, :create, :destroy ]
      devise_scope :user do
        post "sign_up", to: "registrations#create"
        post "sign_in", to: "sessions#create"
      end
    end
  end
end

# Rails.application.routes.draw do
#   # resources :users
#   # namespace :api do
#   #   namespace :v1 do
#   #     get 'restaurants/index'
#   #   end
#   # end

#   # devise_for :users, controllers: {
#   #   registrations: :registrations,
#   #   sessions: :sessions
#   # }

#   root to: 'pages#home'
#   get '/user', to: 'users#show'

#   namespace :api, defaults: { format: :json } do
#     namespace :v1 do
#       resources :restaurants, only: [ :index, :show, :update, :create, :destroy ]
#       post "/signup", to: "users#signup"
#       post "/login", to: "users#login"
#       post "/logout", to: "users#logout"
#       get "/autologin", to: "users#autologin"
#     end
#   end
# end
