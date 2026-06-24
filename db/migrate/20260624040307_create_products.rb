class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :stock, null: false
      t.decimal :price, null: false
      t.references :categories, null: false, foreign_key: true
      t.timestamps
    end
    add_check_constraint :products, "stock>=0", name: "products_stocks_non_negative"
    add_check_constraint :products, "price>0", name: "products_price_non_negative"
  end
end
