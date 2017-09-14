Rails.application.routes.draw do
  devise_for :users

  resource :profile, only: %i[show edit update], controller: :profile

  resources :libraries, only: :show

  resources :folders, except: :index

  resources :files, only: %i[update destroy] do
    member do
      get :download
    end
  end

  root 'main#index'
end
