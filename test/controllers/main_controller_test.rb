require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get mypage" do
    get :mypage
    assert_response :success
  end

  test "should get following" do
    get :following
    assert_response :success
  end

  test "should get follower" do
    get :follower
    assert_response :success
  end

end
