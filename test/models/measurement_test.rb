require 'test_helper'

class MeasurementTest < ActiveSupport::TestCase
  setup do
    @measurement = measurements(:one)
  end

  test "should create measurement" do
    assert @measurement.name
    assert @measurement.unit
    assert @measurement.upper_limit
    assert @measurement.lower_limit
  end

  test "name and units do not exist error" do
    measurement = Measurement.new
    assert_not measurement.save
  end

  test "name and units should exist" do
    measurement = Measurement.new
    measurement.name = "two"
    measurement.unit = "m/ml"
    measurement.lower_limit = "1"
    measurement.upper_limit = "2.3"
    assert measurement.save
  end

  test "upper and lower limit should be convertible to number fails" do
    measurement = Measurement.new
    measurement.name = "two"
    measurement.unit = "m/ml"
    measurement.lower_limit = "a"
    measurement.upper_limit = "b"
    assert_not measurement.save
  end

  test "upper and lower limit should be convertible to number pass" do
    measurement = Measurement.new
    measurement.name = "two"
    measurement.unit = "m/ml"
    measurement.lower_limit = "1"
    measurement.upper_limit = "2.3"
    assert measurement.save
  end

end
