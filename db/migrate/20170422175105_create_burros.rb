class CreateBurros < ActiveRecord::Migration[5.0]
  def change
    create_table :burros do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :img_url

      t.timestamps
    end
  end
end
