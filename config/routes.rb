Rails.application.routes.draw do
  
  root 'static_pages#home'
  
  # root 'static_pages#about'
  
  # root 'static_pages#help'
  
  # root 'static_pages#contact'
  
  # root 'static_pages#signup'
  
  # root 'static_pages#login'
  
  get '/help', to: 'static_pages#help'
  
  get '/about', to: 'static_pages#about'
  
  get '/contact', to: 'static_pages#contact'
  
  get '/signup', to: 'users#new'
end
