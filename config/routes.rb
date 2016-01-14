Rails.application.routes.draw do
  resources :todos, except: :show do
    put :completed, on: :member
    delete :delete_all, on: :collection
  end
end
