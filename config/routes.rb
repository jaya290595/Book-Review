Rails.application.routes.draw do	
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :books do
	resources :reviews
  end
  root 'books#index'
end
