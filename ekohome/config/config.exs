# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ekohome,
  ecto_repos: [Ekohome.Repo]

# Configures the endpoint
config :ekohome, Ekohome.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "k7LtnXAN2VT55uMCL1BGQ6UzFbRw5fH9Th+GM6VXU+YfhrfWApIo9uiSCeJ9/Qhp",
  render_errors: [view: Ekohome.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ekohome.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
