require "application_system_test_case"

class MeasurementsTest < ApplicationSystemTestCase
  setup do
    @measurement = measurements(:one)
  end

  test "visiting the index" do
    visit measurements_url
    assert_selector "h1", text: "Measurements"
  end

  test "creating a Measurement" do
    visit measurements_url
    click_on "New Measurement"

    fill_in "Lower limit", with: @measurement.lower_limit
    fill_in "Name", with: @measurement.name
    fill_in "Unit", with: @measurement.unit
    fill_in "Upper limit", with: @measurement.upper_limit
    click_on "Create Measurement"

    assert_text "Measurement was successfully created"
    click_on "Back"
  end

  test "updating a Measurement" do
    visit measurements_url
    click_on "Edit", match: :first

    fill_in "Lower limit", with: @measurement.lower_limit
    fill_in "Name", with: @measurement.name
    fill_in "Unit", with: @measurement.unit
    fill_in "Upper limit", with: @measurement.upper_limit
    click_on "Update Measurement"

    assert_text "Measurement was successfully updated"
    click_on "Back"
  end

  test "destroying a Measurement" do
    visit measurements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Measurement was successfully destroyed"
  end
end
