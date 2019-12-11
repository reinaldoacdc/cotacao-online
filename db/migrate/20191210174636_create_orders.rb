class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :company_name
      t.string :company_document

      t.timestamps
    end
  end
end
