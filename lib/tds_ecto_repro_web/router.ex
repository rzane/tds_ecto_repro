defmodule TdsEctoReproWeb.Router do
  use TdsEctoReproWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TdsEctoReproWeb do
    pipe_through :api
  end
end
