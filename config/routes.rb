Rails.application.routes.draw do
  devise_for :users, controllers: { 
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }
  resources :transactions
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
end
