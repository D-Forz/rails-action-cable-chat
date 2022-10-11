require "test_helper"

class ChatroomsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get show if user is signed in" do
    sign_in users(:jhon)
    get chatroom_path(chatrooms(:general))
    assert_response :success
    assert_select "h1", "#general"
  end
end
