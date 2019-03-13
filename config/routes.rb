Rails.application.routes.draw do
  devise_for :users
  resources :songs
  # root 'songs#index'
  get "/pages/:page" => "pages#show"
  root "pages#show", page: "landing"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
