class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.float :price
      t.integer :quantity, limit: 2
      t.belongs_to :order, null: false, foreign_key: true
      t.belongs_to :product, null: false, foreign_key: true
    end
  end
end
