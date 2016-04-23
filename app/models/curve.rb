class Curve < ActiveRecord::Base
  validates :name, presence: true
end
