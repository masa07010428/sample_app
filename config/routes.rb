Rails.application.routes.draw do
  root 'static_pages#home'
  
  root 'static_pages#about'
  
  root 'static_pages#help'

  root 'static_pages#contact'
  
  root 'static_pages#signup'
  
  root 'static_pages#login'

  get 'static_pages/home'

  get 'static_pages/help'
  
  get 'static_pages/about'

  get 'static_pages/contact'


  
end
