class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :reputation
      t.integer :plays_win
      t.integer :plays_lose

      t.timestamps
    end
  end
end
