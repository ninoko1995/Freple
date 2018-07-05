Rails.application.routes.draw do
  root to: 'home#top'
  get 'home/help'
  resources :events

  resources :groups do
  	collection do
	  	get '/sign_up' ,to: "groups#new"
	  	post '/sign_up' ,to: "groups#create"
  	end
  end
 
  
  resources :users ,only: [:edit,:update,:destroy,:show] do 
  	collection do
    	get '/sign_up' ,to: "users#new"
  		post '/sign_up' ,to: "users#create"
  	end
  end
  

end