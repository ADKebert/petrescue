Rails.application.routes.draw do
  root 'homepage#index'
  resources :stories
end
