require "application_system_test_case"

class CaloriesTest < ApplicationSystemTestCase
  setup do
    @calory = calories(:one)
  end

  test "visiting the index" do
    visit calories_url
    assert_selector "h1", text: "Calories"
  end

  test "creating a Calory" do
    visit calories_url
    click_on "New Calory"

    fill_in "Calory type", with: @calory.Calory_type
    fill_in "Value", with: @calory.Value
    fill_in "Date registre", with: @calory.date_registre
    fill_in "User", with: @calory.user_id
    click_on "Create Calory"

    assert_text "Calory was successfully created"
    click_on "Back"
  end

  test "updating a Calory" do
    visit calories_url
    click_on "Edit", match: :first

    fill_in "Calory type", with: @calory.Calory_type
    fill_in "Value", with: @calory.Value
    fill_in "Date registre", with: @calory.date_registre
    fill_in "User", with: @calory.user_id
    click_on "Update Calory"

    assert_text "Calory was successfully updated"
    click_on "Back"
  end

  test "destroying a Calory" do
    visit calories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calory was successfully destroyed"
  end
end
