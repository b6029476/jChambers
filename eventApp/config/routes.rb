Rails.application.routes.draw do
  resources :events
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/events'
  resources :contacts
  resources :users
  resources :sessions
  root 'static_pages#home'
  resources :home, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
