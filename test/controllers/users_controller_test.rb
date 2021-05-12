require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get my_tweets" do
    get users_my_tweets_url
    assert_response :success
  end
end
