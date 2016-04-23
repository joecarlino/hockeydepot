class Product < ActiveRecord::Base
  has_many :variants
  validates :title, presence: true
end
