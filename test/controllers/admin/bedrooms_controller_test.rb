require "test_helper"

class Admin::BedroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_bedroom = admin_bedrooms(:one)
  end

  test "should get index" do
    get admin_bedrooms_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_bedroom_url
    assert_response :success
  end

  test "should create admin_bedroom" do
    assert_difference('Admin::Bedroom.count') do
      post admin_bedrooms_url, params: { admin_bedroom: {  } }
    end

    assert_redirected_to admin_bedroom_url(Admin::Bedroom.last)
  end

  test "should show admin_bedroom" do
    get admin_bedroom_url(@admin_bedroom)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_bedroom_url(@admin_bedroom)
    assert_response :success
  end

  test "should update admin_bedroom" do
    patch admin_bedroom_url(@admin_bedroom), params: { admin_bedroom: {  } }
    assert_redirected_to admin_bedroom_url(@admin_bedroom)
  end

  test "should destroy admin_bedroom" do
    assert_difference('Admin::Bedroom.count', -1) do
      delete admin_bedroom_url(@admin_bedroom)
    end

    assert_redirected_to admin_bedrooms_url
  end
end
