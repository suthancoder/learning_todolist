Rails.application.routes.draw do
  root to: 'pages#home'



get '/todoitem/:id', to: 'todoitem#show', as: 'show'
get '/todoitems', to: 'todoitem#index', as: 'index'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
