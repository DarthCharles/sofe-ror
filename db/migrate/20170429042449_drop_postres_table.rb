class DropPostresTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :postres
  end
end
