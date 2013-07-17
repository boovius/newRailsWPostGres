NewRailsWPostGres::Application.routes.draw do

	resources :users

  get "privacy" => "site#privacy"
  get "terms" => "site#terms"

  resource :session, only: [ :new, :create, :destroy  ]

  get "login" => "session#new"
  post "login" => "session#create"
  delete "logout" => "session#destroy"
  get "logout" => "session#destroy"


  root 'site#index'

  
end
