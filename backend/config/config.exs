# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :poll,
  ecto_repos: [Poll.Repo]

# Configures the endpoint
config :poll, PollWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2oLOQYvzoqUe+yL22nvorWJ8MaVZq8Vq3lUDfO7Sr4WEVCJCRVleNdSY8A4LDrgF",
  render_errors: [view: PollWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Poll.PubSub,
  live_view: [signing_salt: "rD8EUcXk"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
