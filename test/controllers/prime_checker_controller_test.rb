require 'test_helper'

class PrimeCheckerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get prime_checker_show_url
    assert_response :success
  end

end
