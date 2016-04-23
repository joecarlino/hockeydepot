class Brand < ActiveRecord::Base
  has_many :variants
  has_many :products, through: :variants

  validates :name, presence: true
end
