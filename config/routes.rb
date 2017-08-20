Rails.application.routes.draw do
  resources :posts

  resources :posts do
    resources :comments, :only => [:create]
  end

  get 'users/index'
  post 'users/index' => 'posts#create'
  post 'users/content' => 'comments#create'
  get 'users/content'

  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
