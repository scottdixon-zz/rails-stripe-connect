require 'test_helper'

class StripeControllerTest < ActionDispatch::IntegrationTest
  test "should get connect" do
    get stripe_connect_url
    assert_response :success
  end

end
