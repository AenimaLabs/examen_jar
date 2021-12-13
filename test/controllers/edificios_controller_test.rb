require "test_helper"

class EdificiosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get edificios_index_url
    assert_response :success
  end

  test "should get show" do
    get edificios_show_url
    assert_response :success
  end

  test "should get new" do
    get edificios_new_url
    assert_response :success
  end

  test "should get edit" do
    get edificios_edit_url
    assert_response :success
  end

  test "should get delete" do
    get edificios_delete_url
    assert_response :success
  end
end
