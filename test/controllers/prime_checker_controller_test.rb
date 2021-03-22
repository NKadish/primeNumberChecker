require 'test_helper'

class PrimeCheckerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get '/prime_checker'
    assert_response :success
  end

end
