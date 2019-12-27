class AddSupplierToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :supplier, foreign_key: true
  end
end
