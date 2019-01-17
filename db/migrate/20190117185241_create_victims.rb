class CreateVictims < ActiveRecord::Migration[5.2]
  def change
    create_table :victims do |t|
      t.string :name
      t.integer :age
      t.references :flu, foreign_key: true

      t.timestamps
    end
  end
end
