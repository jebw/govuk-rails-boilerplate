Rails.application.routes.draw do
  get "/pages/:page", to: "pages#show"
  get "/oidc/cb", to: "pages#auth_callback"
end
