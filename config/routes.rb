Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :groups, only: [:index, :show, :new, :create, :destroy] do
    resources :spendings, only: [:index]
  end

  resources :spendings, only: [:new, :create, :destroy]
end
