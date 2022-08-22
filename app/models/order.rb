class Order < ApplicationRecord
  belongs_to :user
  has_many :products, through: :order_details
  has_many :order_details, dependent: :destroy
end
