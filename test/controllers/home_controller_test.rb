require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get schema" do
    get home_schema_url
    assert_response :success
  end

  test "should get info" do
    get home_info_url
    assert_response :success
  end
end
