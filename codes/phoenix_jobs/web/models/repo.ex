defmodule PhoenixJobs.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_jobs,
    adapter: Ecto.Adapters.Postgres

end
