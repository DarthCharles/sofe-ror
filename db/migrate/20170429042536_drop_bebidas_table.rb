class DropBebidasTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :bebidas
  end
end
