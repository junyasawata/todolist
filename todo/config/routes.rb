Rails.application.routes.draw do
  get 'tasks/index' 
  root 'tasks#index'
  post "tasks/:id/edit" => "tasks#edit"
  post "tasks/:id/update" => "tasks#update"
  post "tasks/:id/destroy" => "tasks#destroy"
  delete 'line/bot'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
