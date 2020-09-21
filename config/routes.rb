Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      get 'users/', to: 'users#index'
      get 'users/:id', to: 'users#show'
      post 'users/', to: 'users#create'
      get 'profile/', to: 'users#profile'

      post 'login/', to: 'auth#login'

      get 'lists/', to: 'lists#index'
      get 'lists/:id', to: 'lists#show'
      get 'lists/current/:id', to: 'lists#current'

      post 'items/', to: 'items#create'
      delete 'items/:id', to: 'items#delete'

      patch 'list_items/:id', to: 'list_items#edit'
      post 'list_items/', to: 'list_items#create'

      post 'categories/', to: 'categories#edit'

    end
  end
end
