class RemoveUnusedColumnsFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :size
    remove_column :orders, :net_total
    remove_column :orders, :state

    add_column :orders, :total, :decimal
  end
end
