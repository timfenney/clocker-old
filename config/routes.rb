Rails.application.routes.draw do
  root 'welcome#index'

  namespace :api do
    namespace :v1 do
      resources :people, only: [:index, :create, :destroy, :update]
    end
  end
end
