class AddOrderToProduct < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :order, foreign_key: true
  end
end
