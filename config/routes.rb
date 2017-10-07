Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  get 'pages/album'

  get 'pages/blog'

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end