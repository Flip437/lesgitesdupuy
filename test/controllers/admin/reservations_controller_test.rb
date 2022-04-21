require "test_helper"

class Admin::ReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_reservation = admin_reservations(:one)
  end

  test "should get index" do
    get admin_reservations_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_reservation_url
    assert_response :success
  end

  test "should create admin_reservation" do
    assert_difference('Admin::Reservation.count') do
      post admin_reservations_url, params: { admin_reservation: { email: @admin_reservation.email, end_date: @admin_reservation.end_date, firstname: @admin_reservation.firstname, lastname: @admin_reservation.lastname, start_date: @admin_reservation.start_date } }
    end

    assert_redirected_to admin_reservation_url(Admin::Reservation.last)
  end

  test "should show admin_reservation" do
    get admin_reservation_url(@admin_reservation)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_reservation_url(@admin_reservation)
    assert_response :success
  end

  test "should update admin_reservation" do
    patch admin_reservation_url(@admin_reservation), params: { admin_reservation: { email: @admin_reservation.email, end_date: @admin_reservation.end_date, firstname: @admin_reservation.firstname, lastname: @admin_reservation.lastname, start_date: @admin_reservation.start_date } }
    assert_redirected_to admin_reservation_url(@admin_reservation)
  end

  test "should destroy admin_reservation" do
    assert_difference('Admin::Reservation.count', -1) do
      delete admin_reservation_url(@admin_reservation)
    end

    assert_redirected_to admin_reservations_url
  end
end
