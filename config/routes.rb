Rails.application.routes.draw do
  root to: 'pages#home'

    get '/todoitem/:id', to: 'todoitem#show', as: 'show'
    get '/todoitems', to: 'todoitem#index', as: 'index'
    get '/todoitems/new', to: 'todoitem#new', as: 'new'
    post '/todoitems/new', to: 'todoitem#create', as: 'create'
    delete '/todoitems/:id', to: 'todoitem#destroy', as: 'delete'
    get '/todoitems/:id/edit', to: 'todoitem#edit', as: 'edit'
    patch '/todoitems/:id', to: 'todoitem#update', as: 'update'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
