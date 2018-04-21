Rails.application.routes.draw do
  get 'allocations/index'

  resources :projects
  resources :users
  resources :allocations

  root to: 'allocations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
