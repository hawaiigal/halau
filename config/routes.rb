Rails.application.routes.draw do
  root to: 'home#index'

  resources :hour_entries, :activity_details

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
