defmodule PhoenixJobs do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(PhoenixJobs.Endpoint, []),
      worker(PhoenixJobs.Repo, [])

    ]

    opts = [strategy: :one_for_one, name: PhoenixJobs.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    PhoenixJobs.Endpoint.config_change(changed, removed)
    :ok
  end
end
