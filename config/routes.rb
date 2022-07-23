Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users,
    controllers: { registrations: 'registrations' }
    
  get '/users/:id', to: 'users#show', as: 'user'

  get '/posts/new', to: 'posts#new'
 
  resources :posts, only: %i(new create index show destroy) do
    resources :photos, only: %i(create)
    resources :likes, only: %i(create destroy)
    resources :comments, only: %i(create destroy)
    resources :reservation, only: %i(new create index show update destroy)
end
end
