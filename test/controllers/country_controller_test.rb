require "test_helper"

class CountryControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get country_show_url
    assert_response :success
  end
end
