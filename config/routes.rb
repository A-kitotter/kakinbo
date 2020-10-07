Rails.application.routes.draw do
  root :to => 'index_page#index'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :performances
  resources :budgets
  resources :contents
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
