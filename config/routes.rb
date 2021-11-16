Rails.application.routes.draw do
  root to:"hour_entries#index"

  resources :hour_entries

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
