Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'restaurants#index'

  # get '/restaurants/new', to: 'restaurants#new'


  # # show one restaurant
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # # show all restaraunts
  # get '/restaurants', to: 'restaurants#index'

  #  # create a new restaurant

  # post '/restaurants', to: 'restaurants#create'

  resources :restaurants, only: [:new, :index, :show, :create] do
    member do
      get :reviews
    end
  end
end

# nest resources
  # resources :restaurants do
  #   collection do
  #     get :reviews
  #   end
  # end
