Rails.application.routes.draw do
  resources :posts
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'welcome/home'
  get 'welcome/app', to: 'welcome#app', as: 'app'
  root 'welcome#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
