Rails.application.routes.draw do
  # get "/", to: "tasks#index", as: 'index'
  # get 'tasks/:id', to: 'tasks#show', as: 'tasks'
  # get '/new', to: 'tasks#new', as: 'new_task'
  # post '/', to: 'tasks#create'
  # get "/tasks/:id/edit", to: "tasks#edit"
  # patch '/tasks/:id', to: 'tasks#update'
  # delete "/tasks/:id", to: "tasks#destroy"

  resources :tasks do
    resources :sub_tasks, only: [:create]
  end
  root to: "tasks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
