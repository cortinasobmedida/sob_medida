defmodule SobMedida.Repo do
  use Ecto.Repo,
    otp_app: :sob_medida,
    adapter: Ecto.Adapters.Postgres
end
