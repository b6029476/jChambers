Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/event'
  get 'static_pages/home'
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/products'

  resources :products, :shallow => true 
    


  resources :users
  resources :sessions
  resources :reviews
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
