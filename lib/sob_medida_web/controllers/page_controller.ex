defmodule SobMedidaWeb.PageController do
  use SobMedidaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
