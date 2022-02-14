Rails.application.routes.draw do
  devise_for :users
  resources :categories, only: :show do
    resources :products, only: %i[index show]
  end
  root 'page#home'
end
