defmodule ElixirCrash.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todos" do
    field(:title, :string)
    field(:description, :string)

    timestamps()
  end

  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:title, :description])
  end
end
