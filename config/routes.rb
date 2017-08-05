# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get 'users/login'

  resources :dnk_memes
  root 'users#login'
end
