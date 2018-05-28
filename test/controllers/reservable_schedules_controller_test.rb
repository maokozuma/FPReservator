require 'test_helper'

class ReservableSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservable_schedule = reservable_schedules(:one)
  end

  test "should get index" do
    get reservable_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_reservable_schedule_url
    assert_response :success
  end

  test "should create reservable_schedule" do
    assert_difference('ReservableSchedule.count') do
      post reservable_schedules_url, params: { reservable_schedule: { date: @reservable_schedule.date, ending_time: @reservable_schedule.ending_time, fp_id: @reservable_schedule.fp_id, starting_time: @reservable_schedule.starting_time } }
    end

    assert_redirected_to reservable_schedule_url(ReservableSchedule.last)
  end

  test "should show reservable_schedule" do
    get reservable_schedule_url(@reservable_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_reservable_schedule_url(@reservable_schedule)
    assert_response :success
  end

  test "should update reservable_schedule" do
    patch reservable_schedule_url(@reservable_schedule), params: { reservable_schedule: { date: @reservable_schedule.date, ending_time: @reservable_schedule.ending_time, fp_id: @reservable_schedule.fp_id, starting_time: @reservable_schedule.starting_time } }
    assert_redirected_to reservable_schedule_url(@reservable_schedule)
  end

  test "should destroy reservable_schedule" do
    assert_difference('ReservableSchedule.count', -1) do
      delete reservable_schedule_url(@reservable_schedule)
    end

    assert_redirected_to reservable_schedules_url
  end
end
