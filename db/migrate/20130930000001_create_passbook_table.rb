class CreatePassbookTable < ActiveRecord::Migration
  def change
    create_table :passbooks do |t|
      t.string :name,
      t.text :description,
      t.integer :category,
      t.integer :device_type,
      t.integer :user_id

      t.timestamps
    end
  end
end
