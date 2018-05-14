require 'test_helper'

class ClubsControllerTest < ActionDispatch::IntegrationTest
  test "should get home2" do
    get clubs_home2_url
    assert_response :success
  end

  test "should get index" do
    get clubs_index_url
    assert_response :success
  end

end
