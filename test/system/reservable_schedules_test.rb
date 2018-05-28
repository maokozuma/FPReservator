require "application_system_test_case"

class ReservableSchedulesTest < ApplicationSystemTestCase
  setup do
    @reservable_schedule = reservable_schedules(:one)
  end

  test "visiting the index" do
    visit reservable_schedules_url
    assert_selector "h1", text: "Reservable Schedules"
  end

  test "creating a Reservable schedule" do
    visit reservable_schedules_url
    click_on "New Reservable Schedule"

    fill_in "Date", with: @reservable_schedule.date
    fill_in "Ending Time", with: @reservable_schedule.ending_time
    fill_in "Fp", with: @reservable_schedule.fp_id
    fill_in "Starting Time", with: @reservable_schedule.starting_time
    click_on "Create Reservable schedule"

    assert_text "Reservable schedule was successfully created"
    click_on "Back"
  end

  test "updating a Reservable schedule" do
    visit reservable_schedules_url
    click_on "Edit", match: :first

    fill_in "Date", with: @reservable_schedule.date
    fill_in "Ending Time", with: @reservable_schedule.ending_time
    fill_in "Fp", with: @reservable_schedule.fp_id
    fill_in "Starting Time", with: @reservable_schedule.starting_time
    click_on "Update Reservable schedule"

    assert_text "Reservable schedule was successfully updated"
    click_on "Back"
  end

  test "destroying a Reservable schedule" do
    visit reservable_schedules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reservable schedule was successfully destroyed"
  end
end
