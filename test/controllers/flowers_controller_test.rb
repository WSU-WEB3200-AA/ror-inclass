require "test_helper"

class FlowersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flowers_index_url
    assert_response :success
  end

  test "should get edit" do
    get flowers_edit_url
    assert_response :success
  end
end
