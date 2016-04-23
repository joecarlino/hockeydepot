class Variant < ActiveRecord::Base
  belongs_to :product
  belongs_to :variant, polymorphic: true

  validates :product_id, presence: true
  validates :variant_id, presence: true
  validates :variant_type, presence: true
end
