Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      get 'users/', to: 'users#index'
      get 'users/:id', to: 'users#show'

      get 'lists/', to: 'lists#index'
      get 'lists/:id', to: 'lists#show'
      get 'lists/current/:id', to: 'lists#current'

    end
  end
end
