Rails.application.routes.draw do
  resources :projects
  root 'welcome#index'
  resources :contacts, only: [:new, :create]
  resources :profiles
  get 'kensho' => 'kensho#index'
  get 'tos' => 'tos#index'
  get '*path' => redirect('/')
end
