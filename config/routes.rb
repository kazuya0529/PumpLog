Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  root to: 'workout_menus#index'
  resources :workout_menus
end
