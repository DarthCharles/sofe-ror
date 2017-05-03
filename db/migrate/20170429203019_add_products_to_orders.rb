class AddProductsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :product, index: true
    add_reference :orders, :customer, index: true

  end
end
