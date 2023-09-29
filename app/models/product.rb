class Product < ApplicationRecord
  belongs_to :category
  has_many :cart_items, dependent: :destroy
  has_many :order_items

  validates :title, presence: true, length: { minimum: 2, maximum: 20 }
  validates :description, presence: true, length: { minimum: 5, maximum: 100 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.01 }
end
