Rails.application.routes.draw do
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'homes#top' #一番最初に出したいページ　rootを使う
 resources :books


end
