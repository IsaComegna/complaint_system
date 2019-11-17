Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'complaints/index'
  post 'complaints/create'
  get 'complaints/new'
  root 'complaints#index'

end
