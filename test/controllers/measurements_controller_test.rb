require 'test_helper'

class MeasurementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @measurement = measurements(:one)
    @measurement.upper_limit = 5
    @measurement.lower_limit = 3
  end

  test "should get index" do
    get measurements_url
    assert_response :success
  end

  test "should get new" do
    get new_measurement_url
    assert_response :success
  end

  test "should create measurement" do
    assert_difference('Measurement.count') do
      post measurements_url, params: { measurement: { lower_limit: @measurement.lower_limit, name: "new name", unit: @measurement.unit, upper_limit: @measurement.upper_limit } }
    end

    assert_redirected_to measurement_url(Measurement.last)
  end

  test "should fail create measurement with same name" do
    assert_no_difference('Measurement.count') do
      post measurements_url, params: { measurement: { lower_limit: @measurement.lower_limit, name: @measurement.name, unit: @measurement.unit, upper_limit: @measurement.upper_limit } }
    end

    assert_response 422
  end

  test "should show measurement" do
    get measurement_url(@measurement)
    assert_response :success
  end

  test "should get edit" do
    get edit_measurement_url(@measurement)
    assert_response :success
  end

  test "should update measurement" do
    patch measurement_url(@measurement), params: { measurement: { lower_limit: @measurement.lower_limit, name: "new name", unit: @measurement.unit, upper_limit: @measurement.upper_limit } }
    assert_redirected_to measurement_url(@measurement)
  end
  
  test "should create error on update measurement with same name" do
    patch measurement_url(@measurement), params: { measurement: { lower_limit: @measurement.lower_limit, name: @measurement.name, unit: @measurement.unit, upper_limit: @measurement.upper_limit } }
    assert_response 422
  end

  test "should destroy measurement" do
    assert_difference('Measurement.count', -1) do
      delete measurement_url(@measurement)
    end

    assert_redirected_to measurements_url
  end
end
