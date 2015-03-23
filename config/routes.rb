Rails.application.routes.draw do
  comfy_route :cms_admin, :path => '/admin'
  mount RailsAdmin::Engine => '/super_admin', as: 'rails_admin'
  root to: 'visitors#index'
  devise_for :users
   # Make sure this routeset is defined last
  comfy_route :cms, :path => '/', :sitemap => false
end
