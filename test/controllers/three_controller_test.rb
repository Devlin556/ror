require 'test_helper'

class ThreeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get three_index_url
    assert_response :success
  end

end
