require "test_helper"

class FlightsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get flights_show_url
    assert_response :success
  end
end
