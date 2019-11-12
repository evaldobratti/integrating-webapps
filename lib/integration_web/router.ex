defmodule IntegrationWeb.Router do
  use IntegrationWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", IntegrationWeb do
    pipe_through :browser

    get "/", PageController, :index

    get "/carts/new", CartController, :new

    get "/iframed", IFrameController, :index
    get "/iframed/select", IFrameController, :select

    get "/web-component", WebComponentController, :index

    get "/hosted-component", HostedComponentController, :index

    get "/select-redirect", SelectRedirectController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", IntegrationWeb do
  #   pipe_through :api
  # end
end
