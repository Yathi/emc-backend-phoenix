defmodule EmcBackendWeb.Router do
  use EmcBackendWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EmcBackendWeb do
    pipe_through :api
  end
end
