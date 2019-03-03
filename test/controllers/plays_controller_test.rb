require 'test_helper'

class PlaysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get plays_new_url
    assert_response :success
  end

  test "should get edit" do
    get plays_edit_url
    assert_response :success
  end

  test "should get show" do
    get plays_show_url
    assert_response :success
  end

  test "should get top" do
    get plays_top_url
    assert_response :success
  end

  test "should get login" do
    get plays_login_url
    assert_response :success
  end

end
