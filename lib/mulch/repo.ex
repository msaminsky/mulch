defmodule Mulch.Repo do
  use Ecto.Repo,
    otp_app: :mulch,
    adapter: Ecto.Adapters.Postgres
end
