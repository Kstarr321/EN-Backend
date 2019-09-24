Rails.application.routes.draw do
  resources :charts
  resources :predictions
  resources :watch_list_entries
  resources :equities
  resources :watchlists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end


  get '/news/general', to: 'news#general'



  post '/quote/single', to: 'api#single'
  get '/quote/sectors', to: 'api#sectors'
  post '/quote/daily', to: 'api#daily'
  post '/quote/search', to: 'api#search'
  post '/quote/intraday', to: 'api#intraday' 
  get '/quote/featured', to: 'api#featured'
  
end
