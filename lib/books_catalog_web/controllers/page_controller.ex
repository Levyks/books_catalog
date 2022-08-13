defmodule BooksCatalogWeb.PageController do
  use BooksCatalogWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
