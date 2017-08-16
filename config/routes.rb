Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :orders
  
  resources :items, only: [:index, :new, :edit, :create, :update, :show]
  
  resources :pages , only: [] do
    collection do
      get :home, :menu, :dashboard, :edit_menu, :manager_orders
    end
  end
end
