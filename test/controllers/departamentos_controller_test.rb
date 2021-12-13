require "test_helper"

class DepartamentosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get departamentos_index_url
    assert_response :success
  end

  test "should get show" do
    get departamentos_show_url
    assert_response :success
  end

  test "should get new" do
    get departamentos_new_url
    assert_response :success
  end

  test "should get edit" do
    get departamentos_edit_url
    assert_response :success
  end

  test "should get delete" do
    get departamentos_delete_url
    assert_response :success
  end
end
