Rails.application.routes.draw do
  resources :flowers, only: [:index, :edit, :update ] do
  end

  root 'pages#iris'
  get 'pages/about'
  get 'pages/home'

  get 'pages/sort_by_sepal_length'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
