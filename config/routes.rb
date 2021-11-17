Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "restaurants#index"

  # shallow nao pega o ID do restaurant para destroy
  resources :restaurants, shallow: true do
    collection do
      get :top
    end
    member do
      get :chef
    end
    # Resources eh sintaxe do ruby para criar um CRUD
    resources :reviews, only: %i[new create destroy]
  end
end
