Rails.application.routes.draw do
    devise_for :users, controllers: {
        sessions: "users/sessions", registrations: "users/registrations"
    }

    resources :blogs do
        resources :likes
        resources :comments
    end

    root 'blogs#index'
    #get 'home/index'

    devise_scope :user do
        get '/users/sign_out' => 'devise/sessions#destroy'
    end
end
