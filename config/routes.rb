Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :books
 get 'top' => 'homes#top'
 get 'index' => 'books#index'
 get 'show' => 'books#show'
 post 'show' => 'books#show'
end
