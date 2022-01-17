class Measurement < ApplicationRecord
  validates_uniqueness_of :name
  validates :name, presence: true
  validates :unit, presence: true
  validates :lower_limit, numericality: true
  validates :upper_limit, numericality: true
end
