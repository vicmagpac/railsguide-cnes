Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "estabelecimentos#index"
  
  resources :estabelecimentos do
    resources :comments
  end
end
