require "application_system_test_case"

class LocalisationsTest < ApplicationSystemTestCase
  setup do
    @localisation = localisations(:one)
  end

  test "visiting the index" do
    visit localisations_url
    assert_selector "h1", text: "Localisations"
  end

  test "creating a Localisation" do
    visit localisations_url
    click_on "New Localisation"

    fill_in "", with: @localisation.
    fill_in "Integer", with: @localisation.integer
    fill_in "String", with: @localisation.string
    click_on "Create Localisation"

    assert_text "Localisation was successfully created"
    click_on "Back"
  end

  test "updating a Localisation" do
    visit localisations_url
    click_on "Edit", match: :first

    fill_in "", with: @localisation.
    fill_in "Integer", with: @localisation.integer
    fill_in "String", with: @localisation.string
    click_on "Update Localisation"

    assert_text "Localisation was successfully updated"
    click_on "Back"
  end

  test "destroying a Localisation" do
    visit localisations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Localisation was successfully destroyed"
  end
end
