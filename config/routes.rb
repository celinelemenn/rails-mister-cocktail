Rails.application.routes.draw do
  # get 'doses/new'
  # get 'doses/create'
  # get 'doses/delete'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end
end


