Rails.application.routes.draw do
  resources :performances
  resources :budgets
  resources :contents
  resources :index_page
  root 'index_page#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
