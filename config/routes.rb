Rails.application.routes.draw do
  
  

  get '/logto', to: 'sessions#new'
  post '/logto', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :plays, except: [:index] do
    collection do 
      
      get :top
      
    end

  end
  root to: 'plays#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
