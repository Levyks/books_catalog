defmodule BooksCatalog.Books.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :author, :string
    field :description, :string
    field :name, :string
    field :released, :date

    timestamps()
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:name, :author, :description, :released])
    |> validate_required([:name, :author, :description, :released])
  end
end
