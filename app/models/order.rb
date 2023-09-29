class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy

  validates :status, presence: true
  validates :address, length: { minimum: 2, maximum: 30 }
  validates :description, length: { minimum: 0, maximum: 300 }
  validates :address, length: { minimum: 2, maximum: 30 }
  validates :delivery_date, presence: true

  accepts_nested_attributes_for :order_items

  enum status: { pending: 0,
                 pending_payment: 1,
                 processing: 2,
                 shipped: 3,
                 completed: 4,
                 canceled: 5 }

  def price_order_items
    order_items.sum(&:total_price)
  end
end
