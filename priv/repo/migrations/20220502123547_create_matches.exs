defmodule FootballApi.Repo.Migrations.CreateMatches do
  use Ecto.Migration

  def change do
    create table(:matches) do
      add :team1_score, :integer
      add :team2_score, :integer
      add :start_time, :naive_datetime
    end
  end
end
