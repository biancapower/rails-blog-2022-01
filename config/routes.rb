Rails.application.routes.draw do
  root 'articles#index', as: "home"

  # get 'articles', to: 'articles#index'
  # get 'articles/new', to: 'articles#new'
  resources :articles do
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
