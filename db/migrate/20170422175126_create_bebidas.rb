class CreateBebidas < ActiveRecord::Migration[5.0]
  def change
    create_table :bebidas do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
