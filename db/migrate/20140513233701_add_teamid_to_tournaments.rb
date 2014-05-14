class AddTeamidToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :team_id, :int
  end
end
