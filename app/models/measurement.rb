class Measurement < ApplicationRecord
  validates_uniqueness_of :name
  validates :name, presence: true
  validates :unit, presence: true
end
