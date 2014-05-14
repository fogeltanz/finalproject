class AddTournamentidToGames < ActiveRecord::Migration
  def change
    add_column :games, :tournament_id, :int
  end
end
