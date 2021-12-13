Rails.application.routes.draw do
  # get 'departamentos/index'
  # get 'departamentos/show'
  # get 'departamentos/new'
  # get 'departamentos/edit'
  # get 'departamentos/delete'
  # get 'edificios/index'
  # get 'edificios/show'
  # get 'edificios/new'
  # get 'edificios/edit'
  # get 'edificios/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :edificios

  resources :departamentos
end
