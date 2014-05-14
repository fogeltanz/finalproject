class AddTournamentidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tournament_id, :int
  end
end
