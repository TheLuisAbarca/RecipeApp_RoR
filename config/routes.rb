Rails.application.routes.draw do
  get 'shopping_list/:recipe_id', to: 'recipes#shopping_list'
  get 'public_recipes', to: 'recipes#public'
  get 'recipe_foods/:recipe_id', to: 'recipe_foods#new'
  post 'recipe_foods/:recipe_id', to: 'recipe_foods#create'
  resources :recipe_foods, only: [:destroy, :update, :edit]
  resources :recipes, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :foods, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "foods#index"
end
