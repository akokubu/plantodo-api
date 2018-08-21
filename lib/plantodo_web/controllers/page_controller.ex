defmodule PlantodoWeb.PageController do
  use PlantodoWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
