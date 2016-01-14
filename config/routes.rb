Rails.application.routes.draw do
  devise_for :users
  resources :todos, except: :show do
    put :completed, on: :member
    delete :delete_all, on: :collection
  end
  root to: "todos#index"
end
