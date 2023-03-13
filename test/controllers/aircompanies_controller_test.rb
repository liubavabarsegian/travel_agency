require "test_helper"

class AircompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get aircompanies_show_url
    assert_response :success
  end
end
