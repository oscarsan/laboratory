class Measurement < ApplicationRecord
  validates_uniqueness_of :name
  validates :name, presence: true
  validates :unit, presence: true
  validates :lower_limit, numericality: true
  validates :upper_limit, numericality: true
  validate :start_must_be_before_end_time

private
  def start_must_be_before_end_time
    return if not lower_limit or not upper_limit
    errors.add(:lower_limit, "must be before end time") if
       lower_limit > upper_limit
  end
end
