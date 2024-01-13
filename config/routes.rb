Rails.application.routes.draw do
  # ... autres routes ...

  devise_for :users

  authenticated :user do
    root to: 'trajets#index', as: :authenticated_root
  end

  devise_scope :user do
    get 'users/sign_out', to: 'devise/sessions#destroy'
  end

  # Explicit route for dashboard
  get 'dashboard/:id', to: 'dashboard#show', as: 'dashboard'

  root "pages#index"

  resources :trajets, only: [:index, :new, :create] do
    collection do
      get 'search'
      get 'trajets_reserves'
    end
  
    member do
      post 'reserver'
    end
  end
end
