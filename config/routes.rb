Rails.application.routes.draw do
  get 'task/index'

  get 'task/create'

  get 'task/finished'

  root 'task#index'
  
  get 'task/reopen'
  
  get 'task/delete'
  
  get 'task/edit'
  
  get 'task/update'
end
