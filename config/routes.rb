Rails.application.routes.draw do
    devise_for :users
    resources :blogs
    root 'home#index'
    #get 'home/index'

    devise_scope :user do
        get '/users/sign_out' => 'devise/sessions#destroy'
      end
end
