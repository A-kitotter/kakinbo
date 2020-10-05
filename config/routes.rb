Rails.application.routes.draw do
  root :to => 'index_page#index'
  resources :performances
  resources :budgets
  resources :contents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
