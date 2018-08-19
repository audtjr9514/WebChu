require 'test_helper'

class WebtoonControllerTest < ActionController::TestCase
  test "should get recommend" do
    get :recommend
    assert_response :success
  end

  test "should get finder" do
    get :finder
    assert_response :success
  end

  test "should get suggest" do
    get :suggest
    assert_response :success
  end

end
