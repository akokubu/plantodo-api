# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :plantodo,
  ecto_repos: [Plantodo.Repo]

# Configures the endpoint
config :plantodo, PlantodoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "x12hpXjxDZ5CqQ49LAwDXXAa2cK1k2jKW2wpuZ2bq9dkcAnw9Nc8TG2AZd1t/w/7",
  render_errors: [view: PlantodoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Plantodo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
