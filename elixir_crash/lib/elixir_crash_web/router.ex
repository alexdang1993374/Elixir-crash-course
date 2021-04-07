defmodule ElixirCrashWeb.Router do
  use ElixirCrashWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", ElixirCrashWeb do
    pipe_through(:browser)

    get("/", PageController, :index)
  end

  scope "/api", ElixirCrashWeb do
    pipe_through(:api)
    get "/", TodoController, :get
    post "/", TodoController, :create
    delete "/:id", TodoController, :delete
  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through(:browser)
      live_dashboard("/dashboard", metrics: ElixirCrashWeb.Telemetry)
    end
  end
end
