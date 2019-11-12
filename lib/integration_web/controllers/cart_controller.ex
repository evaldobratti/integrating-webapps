defmodule IntegrationWeb.CartController do
  use IntegrationWeb, :controller

  def new(conn, params) do
    render(conn, "new.html")
  end

end
