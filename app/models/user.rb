class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true, length: { minimum: 2, maximum: 20 }
  validates :phone_number,
            format: { with: /\A\d{12}\z/, message: 'Must be a twelve-digit number without spaces, hyphens or pluses' }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  enum role: { user: 0, admin: 1 }

  has_one :cart
  has_many :orders, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end
end
