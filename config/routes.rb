Rails.application.routes.draw do
  # get 'mains/index'
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

  # resources :edificios

  root 'mains#index'

  resources :mains

  resources :edificios do
    member do
      get :delete
    end
  end

  # resources :departamentos

  resources :departamentos do
    member do
      get :delete
    end
  end
end
