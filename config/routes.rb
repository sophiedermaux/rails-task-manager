Rails.application.routes.draw do
# get all tasks
  get "tasks", to: "tasks#index"
#add new tasks
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
#display one task
  get "tasks/:id", to: "tasks#show", as: :task
#update a task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
#delete a task
  delete "tasks/:id", to: "tasks#destroy"
# resources :tasks
end
