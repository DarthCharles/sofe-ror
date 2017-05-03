class RenameBurrosTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :burros, :products
  end
end
