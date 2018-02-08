# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tds_ecto_repro,
  ecto_repos: [TdsEctoRepro.Repo]

# Configures the endpoint
config :tds_ecto_repro, TdsEctoReproWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jlzfp97mZubDkxiSF092usDvEB0sI1Yw9lvfNL71xt8EOuLNUpw2F8DLqy2iSW0S",
  render_errors: [view: TdsEctoReproWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: TdsEctoRepro.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
