Rails.application.routes.draw do
  root 'welcome#index'
  resources :contacts, only: [:new, :create]
  get 'kensho' => 'kensho#index'
  get 'tos' => 'tos#index'
  get '*path' => redirect('/')
end
