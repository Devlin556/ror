require 'test_helper'

class FiveControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get five_index_url
    assert_response :success
  end

end
