defmodule IntegrationWeb.WebComponentController do
  use IntegrationWeb, :controller

  def index(conn, params) do
    render(conn, "index.html")
  end

end
