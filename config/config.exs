# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :vot3, Vot3Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BLQiLVZ8FcHP4rzZOEvE9+TLNlTopln1q9s1qI3lVfEMRaP0u6tRLxK0JO5jvmfn",
  render_errors: [view: Vot3Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Vot3.PubSub,
  live_view: [signing_salt: "J2vVMsTQ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
