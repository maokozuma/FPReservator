require "application_system_test_case"

class FpsTest < ApplicationSystemTestCase
  setup do
    @fp = fps(:one)
  end

  test "visiting the index" do
    visit fps_url
    assert_selector "h1", text: "Fps"
  end

  test "creating a Fp" do
    visit fps_url
    click_on "New Fp"

    fill_in "Email", with: @fp.email
    fill_in "Name", with: @fp.name
    click_on "Create Fp"

    assert_text "Fp was successfully created"
    click_on "Back"
  end

  test "updating a Fp" do
    visit fps_url
    click_on "Edit", match: :first

    fill_in "Email", with: @fp.email
    fill_in "Name", with: @fp.name
    click_on "Update Fp"

    assert_text "Fp was successfully updated"
    click_on "Back"
  end

  test "destroying a Fp" do
    visit fps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fp was successfully destroyed"
  end
end
