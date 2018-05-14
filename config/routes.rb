Rails.application.routes.draw do
  resources :clubs

  #get 'clubs/index'
  devise_for :users
  get 'clubs/show', to: 'clubs#show', as: 'profil'
  
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
