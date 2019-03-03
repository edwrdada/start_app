Rails.application.routes.draw do
  
  resources :plays, except: [:index] do
    collection do 
      get :login
      get :top
    end

  end

   root to: 'plays#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
