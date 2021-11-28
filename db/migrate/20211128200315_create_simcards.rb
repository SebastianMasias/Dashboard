class CreateSimcards < ActiveRecord::Migration[6.1]
  def change
    create_table :simcards do |t|
      t.integer :number
      t.float :consumption
      t.float :balance
      t.string :client_id

      t.timestamps
    end
  end
end
