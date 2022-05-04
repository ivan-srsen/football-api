# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :football_api,
  ecto_repos: [FootballApi.Repo]

# Configures the endpoint
config :football_api, FootballApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0OGFmkr5Z5NtXhUyd0X+Ln2O4QG9pkAZkf3JyeXTxfogActpcsfaLjEjRXF82wqU",
  render_errors: [view: FootballApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: FootballApi.PubSub,
  live_view: [signing_salt: "8UbrHxkm"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :football_api, FootballApi.Guardian,
       issuer: "football_api",
       secret_key: "mCkyDatocnv9a77ELsl1I79GPN4vth/mw03AEFOFZAUpwyGX0IEm28EHNdN/ccVw"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
