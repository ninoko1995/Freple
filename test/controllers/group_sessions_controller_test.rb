require 'test_helper'

class GroupSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get group_sessions_new_url
    assert_response :success
  end

end
