Rails.application.routes.draw do
  root 'static_pages#top'
  resources :users, only: %i[new create]
  resources :password_resets, only: %i[new create edit update]
  resource :profile, only: %i[show edit update]
  resources :user_sessions, only: [:new, :create, :destroy]

  resources :shops do
    resources :comments, only: %i[create edit destroy], shallow: true
    collection do
      get :search
    end
  end

  get 'products/index'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

end
