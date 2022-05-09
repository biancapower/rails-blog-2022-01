Rails.application.routes.draw do
  get 'articles', to: 'articles#index'
  get 'articles/new', to: 'articles#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
