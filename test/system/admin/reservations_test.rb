require "application_system_test_case"

class Admin::ReservationsTest < ApplicationSystemTestCase
  setup do
    @admin_reservation = admin_reservations(:one)
  end

  test "visiting the index" do
    visit admin_reservations_url
    assert_selector "h1", text: "Admin/Reservations"
  end

  test "creating a Reservation" do
    visit admin_reservations_url
    click_on "New Admin/Reservation"

    fill_in "Email", with: @admin_reservation.email
    fill_in "End date", with: @admin_reservation.end_date
    fill_in "Firstname", with: @admin_reservation.firstname
    fill_in "Lastname", with: @admin_reservation.lastname
    fill_in "Start date", with: @admin_reservation.start_date
    click_on "Create Reservation"

    assert_text "Reservation was successfully created"
    click_on "Back"
  end

  test "updating a Reservation" do
    visit admin_reservations_url
    click_on "Edit", match: :first

    fill_in "Email", with: @admin_reservation.email
    fill_in "End date", with: @admin_reservation.end_date
    fill_in "Firstname", with: @admin_reservation.firstname
    fill_in "Lastname", with: @admin_reservation.lastname
    fill_in "Start date", with: @admin_reservation.start_date
    click_on "Update Reservation"

    assert_text "Reservation was successfully updated"
    click_on "Back"
  end

  test "destroying a Reservation" do
    visit admin_reservations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reservation was successfully destroyed"
  end
end
