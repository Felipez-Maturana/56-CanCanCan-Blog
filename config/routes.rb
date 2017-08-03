Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:create, :destroy]  
  end

  get 'comments/:id', to: 'comments#destroy', as: :'post_comment_path' 

  devise_for :users

  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
