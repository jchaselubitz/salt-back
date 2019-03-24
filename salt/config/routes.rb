Rails.application.routes.draw do
  namespace :api do 
    namespace :v001 do
      resources :recipe_calendars
      resources :recipe_qty_ingredients
      resources :calendars
      resources :ingredients
      resources :recipes
      resources :users
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end 
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
