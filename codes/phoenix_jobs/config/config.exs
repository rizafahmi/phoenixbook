# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phoenix_jobs, PhoenixJobs.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7eQE5UiYyTxxNi+Ihjd/MWffvom7h48X6MXw8Dc5zYa22K5zsNB1j9aPfmgznWHw",
  debug_errors: false

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
