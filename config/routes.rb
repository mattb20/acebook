Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'
  resources :posts


get '/:wall_id/walls', to: 'walls#show'
binding.pry
end
