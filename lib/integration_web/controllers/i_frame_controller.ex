defmodule IntegrationWeb.IFrameController do
  use IntegrationWeb, :controller

  def index(conn, params) do
    render(conn, "index.html")
  end

  def select(conn, params) do
    render(conn, "select.html")
  end

end
