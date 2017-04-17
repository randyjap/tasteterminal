Rails.application.routes.draw do
  root to: 'frontpage#index'

  namespace :admin do
    resources :articles
  end
end
