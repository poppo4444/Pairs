Rails.application.routes.draw do
  devise_for :users, :controllers => {
  :sessions      => "users/sessions",
  :registrations => "users/registrations",
  :passwords     => "users/passwords",
  :omniauth_callbacks => "users/omniauth_callbacks" 
  }
  resources :users ,   only: [:show] do
    member do
     get :liking, :likers
    end
  end
  resources :likes,    only: [:create, :destroy]
  resources :profiles, only: [:show,:edit,:update]
  resources :messages, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'search#index'
end
