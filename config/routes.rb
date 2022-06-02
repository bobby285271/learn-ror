Rails.application.routes.draw do
  get 'welcome/index'
  get 'bobby/welcome/test', to: "welcome#index"
  get 'page/:id', to: "welcome#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'welcome#index'
end
