require 'test_helper'

class SomeControllerTest < ActionDispatch::IntegrationTest
  test "should get some" do
    get some_some_url
    assert_response :success
  end

end
