Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :rentals do
    resources :bookings, only: [:create]
  end
end
