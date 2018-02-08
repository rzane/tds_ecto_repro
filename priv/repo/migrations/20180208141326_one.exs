defmodule TdsEctoRepro.Repo.Migrations.One do
  use Ecto.Migration

  # If you uncomment this line, you'll
  # see the real error.
  # @disable_ddl_transaction true

  def change do
    create table(:users) do
      add :email, :string

      # Create a reference to a table that doesn't exist.
      # This causes the transaction to fail.
      add :foo_id, references(:foos)
    end
  end
end
