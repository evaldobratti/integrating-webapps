defmodule IntegrationWeb.HostedComponentController do
  use IntegrationWeb, :controller

  def index(conn, params) do
    render(conn, "index.html")
  end

end
