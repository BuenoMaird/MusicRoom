# == Route Map
#
#     Prefix Verb   URI Pattern           Controller#Action
#       root GET    /                     pages#home
# edit_users GET    /users/edit(.:format) users#edit
#      users GET    /users(.:format)      users#index
#            POST   /users(.:format)      users#create
#   new_user GET    /users/new(.:format)  users#new
#       user PATCH  /users/:id(.:format)  users#update
#            PUT    /users/:id(.:format)  users#update
#            DELETE /users/:id(.:format)  users#destroy
#      login GET    /login(.:format)      session#new
#            POST   /login(.:format)      session#create
#            DELETE /login(.:format)      session#destroy
#

Rails.application.routes.draw do

  root :to => 'pages#home'

resources :users, :except => [:edit, :show] do #has to be in an array. Don't not to put it in an array you fuck
    collection do
      get '/edit' => 'users#edit'
    end
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  
end
