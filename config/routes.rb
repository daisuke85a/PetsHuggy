Rails.application.routes.draw do
  resources :listings
  root :to => "pages#index"
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }
  resources :users, only: [:show]

  get 'manage-listing/:id/basics' => 'listings#basics', as: 'manage-listing_basics'
  get 'manage-listing/:id/description' => 'listings#description', as: 'manage_listing_description'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
