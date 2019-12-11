class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :code
      t.integer :quantity
      t.float :price
      t.string :observation

      t.timestamps
    end
  end
end
