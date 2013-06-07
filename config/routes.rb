Todo::Application.routes.draw do
  resources :comments


  resources :todo_items
  root to: 'application#index'
end
