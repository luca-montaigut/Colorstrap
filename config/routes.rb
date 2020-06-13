Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "colorstraps#index"
  resources :colorstraps
  get "nutriti/index"
  get "nutriti/week"
end
