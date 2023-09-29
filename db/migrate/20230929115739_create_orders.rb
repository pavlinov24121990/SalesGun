class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :status
      t.string :address
      t.text :description
      t.datetime :delivery_date
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
