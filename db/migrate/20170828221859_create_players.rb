class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :numero_goals
      t.integer :plays_win
      t.integer :plays_lose
      t.integer :reputation
      t.string :position

      t.timestamps
    end
  end
end
