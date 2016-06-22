Rails.application.routes.draw do
  resources :events do
    member do
      post 'publish'
      post 'unpublish'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
