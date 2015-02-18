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

config :phoenix_jobs, PhoenixJobs.Repo,
  database: "phoenix_jobs",
  username: "riza",
  password: "220281",
  hostname: "localhost"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
