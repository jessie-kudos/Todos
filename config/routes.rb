Rails.application.routes.draw do
  resources :todos, except: :show
end
