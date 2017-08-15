Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items, only: [:index, :new, :edit, :create, :update, :show]

  resources :pages , only: [] do
    collection do
      get :edit_menu
    end
  end
end
