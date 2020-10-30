require 'test_helper'

class ReciprsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reciprs_index_url
    assert_response :success
  end

  test "should get show" do
    get reciprs_show_url
    assert_response :success
  end

  test "should get new" do
    get reciprs_new_url
    assert_response :success
  end

  test "should get edit" do
    get reciprs_edit_url
    assert_response :success
  end

end
