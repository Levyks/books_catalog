defmodule BooksCatalog.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      BooksCatalog.Repo,
      # Start the Telemetry supervisor
      BooksCatalogWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: BooksCatalog.PubSub},
      # Start the Endpoint (http/https)
      BooksCatalogWeb.Endpoint
      # Start a worker by calling: BooksCatalog.Worker.start_link(arg)
      # {BooksCatalog.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: BooksCatalog.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    BooksCatalogWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
