Rails.application.routes.draw do
  root to: 'frontpage#index'

  namespace :admin do
    resources :articles, :users, :sessions
    root to: 'nav#index'
  end
end
