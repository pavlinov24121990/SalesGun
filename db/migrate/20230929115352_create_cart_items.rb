class CreateCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_items do |t|
      t.integer :quantity, limit: 2
      t.belongs_to :cart, null: false, foreign_key: true
      t.belongs_to :product, null: false, foreign_key: true
    end
  end
end
