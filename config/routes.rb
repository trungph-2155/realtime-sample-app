Rails.application.routes.draw do
  resources :notifications, only: [:new, :create]
  mount ActionCable.server, at: "/cable"
  namespace :api do
    resources :notifications, only: :index
  end
end
