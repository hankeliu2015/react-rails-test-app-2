Rails.application.routes.draw do
  get 'welcome/home'
  get 'welcome/app', 'welcome#app'
  root 'welcome#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
