Rails.application.routes.draw do
  get 'events/new'
  get 'events/create'
  get 'events/edit'
  get 'events/show'
  get 'events/index'
  get 'events/search'
  get 'events/delete'
  get 'events/update'
  
  root to: 'groups#index'
  get 'event/search'
  resources :groups
  resources :events
  resources :users
end
