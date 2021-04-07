defmodule ElixirCrash.Repo.Migrations.RecreateTodosTable do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add(:title, :string, null: false)
      add(:description, :string)

      timestamps()
    end
  end
end
