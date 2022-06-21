import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :sob_medida, SobMedida.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "sob_medida_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :sob_medida, SobMedidaWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "rwrw/rEStu5ZkRQOjdc2vUxiWp1hInd5BriVrpw6T9MQBc0HZoKUXCDsnoUy/Ysw",
  server: false

# In test we don't send emails.
config :sob_medida, SobMedida.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime