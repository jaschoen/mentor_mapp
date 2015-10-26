Rails.application.routes.draw do
  root 'welcome#index'
  get 'kensho' => 'kensho#index'
  get '*path' => redirect('/')
end
