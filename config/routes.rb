Rails.application.routes.draw do
  namespace :api, defauls: { format: :json } do
    resources :users
  end
end
