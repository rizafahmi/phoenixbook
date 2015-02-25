defmodule PhoenixJobs.Repo.Migrations.CreateJob do
  use Ecto.Migration

  def up do
    create table(:jobs) do
      add :title, :string, size: 75
      add :job_type, :string, size: 50
      add :description, :string, size: 250
      add :job_status, :string, size: 50
    end
  end

  def down do
    drop table(:jobs)
  end
end
