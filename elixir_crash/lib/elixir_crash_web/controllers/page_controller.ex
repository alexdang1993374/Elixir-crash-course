defmodule ElixirCrashWeb.PageController do
  use ElixirCrashWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
