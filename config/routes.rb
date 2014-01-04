PropertyManagement::Application.routes.draw do
  resources :properties
  resources :owners

  root to: 'properties#index'

end
