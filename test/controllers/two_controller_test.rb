require 'test_helper'

class TwoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get two_index_url
    assert_response :success
  end

end
