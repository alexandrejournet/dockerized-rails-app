Rails.application.routes.draw do
  root "home#home"
  get "show" => "home#show"
  get "/auth/oauth2/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"
end