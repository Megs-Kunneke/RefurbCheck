Rails.application.routes.draw do
  get 'dashboard/index'
  
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  

  root 'dashboard#index'
  resources :spec_checks

  get "up" => "rails/health#show", as: :rails_health_check

end
