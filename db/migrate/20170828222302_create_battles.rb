class CreateBattles < ActiveRecord::Migration[5.1]
  def change
    create_table :battles do |t|
      t.time :time
      t.integer :bet
      t.datetime :date
      t.timestamps
    end
  end
end
