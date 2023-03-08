require "test_helper"

class AirportsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get airports_show_url
    assert_response :success
  end
end
