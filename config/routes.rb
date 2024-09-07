Rails.application.routes.draw do

  resources :shops do
    resources :comments, only: %i[create edit destroy], shallow: true
    collection do
      get :search
    end
  end

  root 'shops#index'
  get 'products/index'
  # root to: 'devise/registrations#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get 'login', to: 'logins#new'

  # root 'logins#new'
  # root 'top#index'


  # resource :login, only: [:new, :create]

end
