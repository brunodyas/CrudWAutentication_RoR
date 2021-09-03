Rails.application.routes.draw do
  resources :itens
  get 'home/index'
  devise_for :users
  resources :brunoagendas
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
