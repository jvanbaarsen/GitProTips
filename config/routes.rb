Gitprotips::Application.routes.draw do
  root to: 'tips#index'

  get 'sign-up' => 'users#new', as: 'sign_up'
  post 'sign-up' => 'users#create'

  scope 'tips' do
    get 'new' => 'tips#new', as: 'new_tip'
    post 'new' => 'tips#create'
    get ':id' => 'tips#show', as: 'tip'
  end
end
