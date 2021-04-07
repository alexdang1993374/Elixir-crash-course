# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_crash,
  ecto_repos: [ElixirCrash.Repo]

# Configures the endpoint
config :elixir_crash, ElixirCrashWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BUpeHsLY5Ajrqe2Vo9mCkkzYQU4drizwCm4p4KsTJ2L7/mWA/zlHYl78wJxPsyeN",
  render_errors: [view: ElixirCrashWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ElixirCrash.PubSub,
  live_view: [signing_salt: "h3rEod59"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
