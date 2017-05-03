class RenameIngredientsToExtras < ActiveRecord::Migration[5.0]
  def change
    rename_table :customers, :extras
    add_column :extras, :price, :decimal
  end
end
