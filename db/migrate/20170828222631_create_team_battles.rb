class CreateTeamBattles < ActiveRecord::Migration[5.1]
  def change
    create_table :team_battles do |t|
      t.boolean :is_win
      t.references :team, foreign_key: true
      t.references :battle, foreign_key: true

      t.timestamps
    end
  end
end
