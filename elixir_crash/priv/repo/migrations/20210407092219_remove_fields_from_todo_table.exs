defmodule ElixirCrash.Repo.Migrations.RemoveFieldsFromTodoTable do
  use Ecto.Migration

  def change do
    drop table(:todos)
  end
end
