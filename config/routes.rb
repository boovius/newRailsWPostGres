NewRailsWPostGres::Application.routes.draw do

  
	resources :users

  get "privacy" => "site#privacy"
  get "terms" => "site#terms"

  resource :session, only: [ :new, :create, :destroy  ]

  get "login" => "session#new"
  post "login" => "session#create"
  delete "logout" => "session#destroy"
  get "logout" => "session#destroy"

  # get "password/edit"
  # get "password/update"

  resource :password, only: [ :update ]
  get "reset/:code" => "password#edit"

  root 'site#index'

  
end
