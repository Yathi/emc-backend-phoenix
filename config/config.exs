# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :emc_backend,
  ecto_repos: [EmcBackend.Repo]

# Configures the endpoint
config :emc_backend, EmcBackendWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EVIZkjx8WeG0n0FuUAtUp9Hef6qDflJGYkkALq4m/fWBJsfWs7cc+orGCGu4Vaw6",
  render_errors: [view: EmcBackendWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: EmcBackend.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
