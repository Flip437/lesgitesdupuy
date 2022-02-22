Rails.application.routes.draw do
  namespace :admin do
    resources :bedrooms
  end
  resources :bedrooms
  namespace :admin do
    resources :cottages
    end
  root "admin/cottages#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htmlz
end
