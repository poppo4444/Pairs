Rails.application.routes.draw do
  devise_for :users, :controllers => {
  :sessions      => "users/sessions",
  :registrations => "users/registrations",
  :passwords     => "users/passwords",
  :omniauth_callbacks => "users/omniauth_callbacks" 
  } 
   resources :users,only: %i() do
    resources :profile, only: [:index,:new,:create,:edit,:update]
  end
  resources :message,only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'search#index'
end
