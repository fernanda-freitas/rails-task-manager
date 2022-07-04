Rails.application.routes.draw do
  get '/', to: 'tasks#index'

  # Create
  get 'task/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Read All and One
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
end
