Rails.application.routes.draw do
 resources :users
  
 get 'redirect', to: 'users#redirect', as: 'redirect'
 get 'callback', to: 'users#callback', as: 'callback'
 
 get '/calendars', to: 'users#calendars', as: 'calendars'
 get 'events/:calendar_id', to: 'users#events', as: 'events', calendar_id: /[^\/]+/
 post '/events/:calendar_id', to: 'users#new_event', as: 'new_event', calendar_id: /[^\/]+/

end
