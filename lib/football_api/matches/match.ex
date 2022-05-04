defmodule FootballApi.Matches.Match do
  use Ecto.Schema

  schema "games" do
    field :team1_score, :integer
    field :team2_score, :integer
    field :start_time,  :date
  end

end
