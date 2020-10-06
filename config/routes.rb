Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "products#index"
  resources :orders do
  	put :complete_order
  end

  resources :products do
  	get :add_product
  end
end
