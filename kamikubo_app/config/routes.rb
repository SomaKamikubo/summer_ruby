Rails.application.routes.draw do
  get 'photos/index'
  get 'frends/new'
  get 'frends/show'
  get 'items/new'
  get 'items/show'
  resources :friends
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
