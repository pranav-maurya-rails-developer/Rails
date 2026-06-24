class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.references :users, foreign_key: true, null: false
      t.string :status, null: false
      t.decimal :total_price, null: false, precision: 10, scale: 2
      t.timestamps
    end
    add_check_constraint :orders, "total_price >= 0", name: "orders_total_price_non_negative"
  end
end
