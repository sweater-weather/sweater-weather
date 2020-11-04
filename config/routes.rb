Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/', to: 'welcome#index'
      get '/forecast', to: 'forecast#show'
      get '/backgrounds', to: 'backgrounds#show'
      post '/sessions', to: 'sessions#create'
      post '/users', to: 'users#create'
      post '/road_trip', to: 'road_trip#create'
    end
  end

  get '/', to: redirect('/api/v1')
end
