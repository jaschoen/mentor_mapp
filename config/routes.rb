Rails.application.routes.draw do
  root 'welcome#index'
  get 'kensho' => 'kensho#index'
  get 'tos' => 'tos#index'
  get '*path' => redirect('/')
end
