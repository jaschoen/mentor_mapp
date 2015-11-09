Rails.application.routes.draw do
  resources :mentors
  root 'welcome#index'
  resources :contacts, only: [:new, :create]
  resources :profiles
  get 'tos' => 'tos#index'
  get '*path' => redirect('/')
end
