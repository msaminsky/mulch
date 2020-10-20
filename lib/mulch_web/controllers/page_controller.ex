defmodule MulchWeb.PageController do
  use MulchWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
