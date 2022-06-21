defmodule SobMedidaWeb.BudgetController do
  use SobMedidaWeb, :controller

  def new(conn, _params) do
    render(conn, "index.html")
  end
end
