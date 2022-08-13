defmodule BooksCatalog.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :name, :string
      add :author, :string
      add :description, :text
      add :released, :date

      timestamps()
    end
  end
end
