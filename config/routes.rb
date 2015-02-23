Rails.application.routes.draw do
  root 'application#index'

  namespace :api do
    resources :tasks
  end
end
