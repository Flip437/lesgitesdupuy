require "application_system_test_case"

class Admin::BedroomsTest < ApplicationSystemTestCase
  setup do
    @admin_bedroom = admin_bedrooms(:one)
  end

  test "visiting the index" do
    visit admin_bedrooms_url
    assert_selector "h1", text: "Admin/Bedrooms"
  end

  test "creating a Bedroom" do
    visit admin_bedrooms_url
    click_on "New Admin/Bedroom"

    click_on "Create Bedroom"

    assert_text "Bedroom was successfully created"
    click_on "Back"
  end

  test "updating a Bedroom" do
    visit admin_bedrooms_url
    click_on "Edit", match: :first

    click_on "Update Bedroom"

    assert_text "Bedroom was successfully updated"
    click_on "Back"
  end

  test "destroying a Bedroom" do
    visit admin_bedrooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bedroom was successfully destroyed"
  end
end
