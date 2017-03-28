Rails.application.routes.draw do
  devise_for :users
  resources :movies do

    member do
      post :favorite
      post :dislike
    end

    resources :reviews
  end
  root 'movies#index'
end
