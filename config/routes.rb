Rails.application.routes.draw do
  get 'chart_sample/index'
  resources :performances
  resources :budgets
  resources :contents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
