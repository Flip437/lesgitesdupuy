require "test_helper"

class Admin::CottagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_cottage = admin_cottages(:one)
  end

  test "should get index" do
    get admin_cottages_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_cottage_url
    assert_response :success
  end

  test "should create admin_cottage" do
    assert_difference('Admin::Cottage.count') do
      post admin_cottages_url, params: { admin_cottage: {  } }
    end

    assert_redirected_to admin_cottage_url(Admin::Cottage.last)
  end

  test "should show admin_cottage" do
    get admin_cottage_url(@admin_cottage)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_cottage_url(@admin_cottage)
    assert_response :success
  end

  test "should update admin_cottage" do
    patch admin_cottage_url(@admin_cottage), params: { admin_cottage: {  } }
    assert_redirected_to admin_cottage_url(@admin_cottage)
  end

  test "should destroy admin_cottage" do
    assert_difference('Admin::Cottage.count', -1) do
      delete admin_cottage_url(@admin_cottage)
    end

    assert_redirected_to admin_cottages_url
  end
end
