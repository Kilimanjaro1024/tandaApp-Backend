require "test_helper"

class ShiftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shift = shifts(:one)
  end

  test "should get index" do
    get shifts_url, as: :json
    assert_response :success
  end

  test "should create shift" do
    assert_difference('Shift.count') do
      post shifts_url, params: { shift: { break_length: @shift.break_length, end: @shift.end, start: @shift.start, user_id: @shift.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show shift" do
    get shift_url(@shift), as: :json
    assert_response :success
  end

  test "should update shift" do
    patch shift_url(@shift), params: { shift: { break_length: @shift.break_length, end: @shift.end, start: @shift.start, user_id: @shift.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy shift" do
    assert_difference('Shift.count', -1) do
      delete shift_url(@shift), as: :json
    end

    assert_response 204
  end
end
