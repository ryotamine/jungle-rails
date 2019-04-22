class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.integer :price_cents
      t.integer :price
      t.integer :quantity
      t.string :category

      t.timestamps null: false
    end
  end
end
