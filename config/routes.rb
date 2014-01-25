Gitprotips::Application.routes.draw do
  root to: 'tips#index'

  get 'sign-up' => 'users#new', as: 'sign_up'
  post 'sign-up' => 'users#create'
end
