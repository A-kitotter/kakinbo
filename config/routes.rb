Rails.application.routes.draw do
  root 'index_pages#show'
  resources :performances
  resources :budgets
  resources :contents
  resources :index_page
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
