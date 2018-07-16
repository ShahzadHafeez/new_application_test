Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'articles#index'
get 'articles/about' => 'articles#about'
#get 'articles/new' => 'articles#new'
resources :articles

end
