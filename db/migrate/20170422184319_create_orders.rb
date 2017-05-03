class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :size
      t.decimal :net_total
      t.integer :state

      t.timestamps
    end
  end
end
