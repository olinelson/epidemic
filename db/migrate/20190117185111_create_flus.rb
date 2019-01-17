class CreateFlus < ActiveRecord::Migration[5.2]
  def change
    create_table :flus do |t|
      t.string :strain
      t.string :nickname
      t.boolean :fatal

      t.timestamps
    end
  end
end
