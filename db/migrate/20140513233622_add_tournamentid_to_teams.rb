class AddTournamentidToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :tournament_id, :int
  end
end
