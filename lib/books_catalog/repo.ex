defmodule BooksCatalog.Repo do
  use Ecto.Repo,
    otp_app: :books_catalog,
    adapter: Ecto.Adapters.Postgres
end
