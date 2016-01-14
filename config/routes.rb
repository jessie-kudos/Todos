Rails.application.routes.draw do
  resources :todos, except: :show do
    member do
      put 'completed'
    end
  end
end
