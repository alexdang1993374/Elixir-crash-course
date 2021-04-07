defmodule ElixirCrash.Repo.Migrations.AddFieldsToTodoTable do
  use Ecto.Migration

  def change do
    alter table(:todos) do
      add :inserted_at, :string
      add :updated_at, :string
    end
  end
end
