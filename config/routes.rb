Rails.application.routes.draw do
  root to: 'homes#top'
  
  
  get 'books' => 'lists#index'
  get 'books/:id' => 'lists#show', as: 'list'
  post 'lists' => 'lists#create'
  get 'books/:id/edit' => 'lists#edit', as: 'edit_list'
  patch 'books/:id' => 'lists#update', as: 'update_list'
  delete 'books/:id' => 'lists#destroy', as: 'destroy_list'
  
end