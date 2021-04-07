defmodule ElixirCrash.Todos do
  import Ecto.Query

  alias ElixirCrash.Repo
  alias ElixirCrash.Todo

  def create_todo(attrs \\ %{}) do
    %Todo{}
    |> Todo.changeset(attrs)
    |> Repo.insert()
  end

  def get_todos do
    {:ok, Repo.all(Todo)}
  end

  def get_todo!(id), do: Repo.get!(Todo, id)

  def delete_todo(%Todo{} = todo) do
    Repo.delete(todo)
  end
end
