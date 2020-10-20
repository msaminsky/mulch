# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mulch,
  ecto_repos: [Mulch.Repo]

# Configures the endpoint
config :mulch, MulchWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kF4rzvjYcq1uEhMPrwFS3dGCuZ2TyEA+N7cZO5naupl/s6634Rz0/Xs9Ev0nqh6G",
  render_errors: [view: MulchWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Mulch.PubSub,
  live_view: [signing_salt: "4T3Jg4lE"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
