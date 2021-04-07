defmodule ElixirCrashWeb.TodoController do
  use ElixirCrashWeb, :controller
  alias ElixirCrash.Todos
  alias ElixirCrash.Todo

  def create(conn, params) do
    with {:ok, %Todo{} = todo} <- Todos.create_todo(params) do
      conn
      |> put_status(:created)
      |> render("todo.json", todo: todo)
    end
  end

  def get(conn, _params) do
    with {:ok, todos} <- Todos.get_todos() do
      conn
      |> render("todos.json", todos: todos)
    else
      {:error, %Todo{} = todo} -> nil
    end
  end

  def delete(conn, %{"id" => id}) do
    todo = Todos.get_todo!(id)

    with {:ok, %Todo{}} <- Todos.delete_todo(todo) do
      send_resp(conn, :no_content, "")
    end
  end
end
