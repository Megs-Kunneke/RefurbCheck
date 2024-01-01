Rails.application.routes.draw do
  get 'dashboard/index'
  devise_for :users

  root 'dashboard#index'
  resources :spec_checks

  get "up" => "rails/health#show", as: :rails_health_check

end
