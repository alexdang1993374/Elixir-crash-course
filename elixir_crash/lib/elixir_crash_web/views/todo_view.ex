defmodule ElixirCrashWeb.TodoView do
  use ElixirCrashWeb, :view

  def render("todo.json", %{todo: todo}) do
    %{
      "title" => todo.title,
      "description" => todo.description
    }
  end

  def render("todos.json", %{todos: [t | _]}) do
    [
    %{
      "title" => t.title,
      "description" => t.description
    }
    ]
  end
end
