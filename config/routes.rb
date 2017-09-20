Rails.application.routes.draw do
  root to: 'home#index'
  resources :films do
  end
  resources :actors do
    member do
      get '/new_film', to: 'actors#newfilm'
      post '/new_film', to: 'actors#createfilm'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
