defmodule ElixirCrash.Repo do
  use Ecto.Repo,
    otp_app: :elixir_crash,
    adapter: Ecto.Adapters.Postgres
end
