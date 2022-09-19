Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  root 'groups#index'
  resources :groups, only: [:index, :show, :new, :create, :destroy] do
    resources :spendings, only: [:index, :new, :create, :destroy]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
