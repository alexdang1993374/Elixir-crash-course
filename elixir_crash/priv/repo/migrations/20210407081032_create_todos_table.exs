defmodule ElixirCrash.Repo.Migrations.CreateTodosTable do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add(:title, :string, null: false)
      add(:description, :string)
    end
  end
end
