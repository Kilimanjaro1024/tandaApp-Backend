require "test_helper"

class NewshiftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newshift = newshifts(:one)
  end

  test "should get index" do
    get newshifts_url, as: :json
    assert_response :success
  end

  test "should create newshift" do
    assert_difference('Newshift.count') do
      post newshifts_url, params: { newshift: { break_length: @newshift.break_length, end: @newshift.end, org: @newshift.org, start: @newshift.start, user_id: @newshift.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show newshift" do
    get newshift_url(@newshift), as: :json
    assert_response :success
  end

  test "should update newshift" do
    patch newshift_url(@newshift), params: { newshift: { break_length: @newshift.break_length, end: @newshift.end, org: @newshift.org, start: @newshift.start, user_id: @newshift.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy newshift" do
    assert_difference('Newshift.count', -1) do
      delete newshift_url(@newshift), as: :json
    end

    assert_response 204
  end
end
