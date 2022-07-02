Rails.application.routes.draw do
  # Create
  get 'task/new', to: 'tasks#new'

  post 'tasks', to: 'tasks#create'

  # Read (all)
  get 'tasks', to: 'tasks#index', as: :tasks_all

  # Read (one)
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit

  patch 'tasks/:id', to: 'tasks#update'

  # Delete
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete
end
