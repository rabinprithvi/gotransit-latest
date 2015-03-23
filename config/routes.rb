Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/super_admin', as: 'rails_admin'
  root to: 'visitors#index'
  devise_for :users
end
