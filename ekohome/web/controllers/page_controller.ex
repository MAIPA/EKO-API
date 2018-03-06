defmodule Ekohome.PageController do
  use Ekohome.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
