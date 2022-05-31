Rails.application.routes.draw do
  # namespace :admin do
  #   resources :reservations do
  #
  #   end
  # end
  # namespace :admin do
  #   resources :bedrooms do
  #     member do
  #       get :get_infos
  #     end
  #   end
  # end
  # resources :bedrooms
  # namespace :admin do
  #   resources :cottages
  #   end
  # root "admin/cottages#index"
  get "public/gallery/grand_gite"
  get "public/gallery/petit_gite"
  root "public/home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
