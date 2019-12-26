class AddCnpjToSuppliers < ActiveRecord::Migration[6.0]
  def change
    add_column :suppliers, :cnpj, :string
  end
end
