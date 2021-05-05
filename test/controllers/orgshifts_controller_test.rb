require "test_helper"

class OrgshiftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orgshift = orgshifts(:one)
  end

  test "should get index" do
    get orgshifts_url, as: :json
    assert_response :success
  end

  test "should create orgshift" do
    assert_difference('Orgshift.count') do
      post orgshifts_url, params: { orgshift: { break_length: @orgshift.break_length, end: @orgshift.end, name: @orgshift.name, org: @orgshift.org, start: @orgshift.start, user_id: @orgshift.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show orgshift" do
    get orgshift_url(@orgshift), as: :json
    assert_response :success
  end

  test "should update orgshift" do
    patch orgshift_url(@orgshift), params: { orgshift: { break_length: @orgshift.break_length, end: @orgshift.end, name: @orgshift.name, org: @orgshift.org, start: @orgshift.start, user_id: @orgshift.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy orgshift" do
    assert_difference('Orgshift.count', -1) do
      delete orgshift_url(@orgshift), as: :json
    end

    assert_response 204
  end
end
