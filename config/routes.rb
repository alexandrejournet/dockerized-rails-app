Rails.application.routes.draw do
  get 'home/show'
  root "home#show"
  get "/auth/oauth2/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"
end