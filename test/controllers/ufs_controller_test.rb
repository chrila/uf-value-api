require 'test_helper'

class UfsControllerTest < ActionDispatch::IntegrationTest
  test "should get response" do
    get ufs_response_url
    assert_response :success
  end

end
