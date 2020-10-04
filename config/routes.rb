Rails.application.routes.draw do
  get 'index_page/show'
  get 'chart_sample/index'
  resources :performances
  resources :budgets
  resources :contents

  root to: "index_page#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
