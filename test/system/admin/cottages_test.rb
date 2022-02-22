require "application_system_test_case"

class Admin::CottagesTest < ApplicationSystemTestCase
  setup do
    @admin_cottage = admin_cottages(:one)
  end

  test "visiting the index" do
    visit admin_cottages_url
    assert_selector "h1", text: "Admin/Cottages"
  end

  test "creating a Cottage" do
    visit admin_cottages_url
    click_on "New Admin/Cottage"

    click_on "Create Cottage"

    assert_text "Cottage was successfully created"
    click_on "Back"
  end

  test "updating a Cottage" do
    visit admin_cottages_url
    click_on "Edit", match: :first

    click_on "Update Cottage"

    assert_text "Cottage was successfully updated"
    click_on "Back"
  end

  test "destroying a Cottage" do
    visit admin_cottages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cottage was successfully destroyed"
  end
end
