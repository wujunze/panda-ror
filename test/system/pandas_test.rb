require "application_system_test_case"

class PandasTest < ApplicationSystemTestCase
  setup do
    @panda = pandas(:one)
  end

  test "visiting the index" do
    visit pandas_url
    assert_selector "h1", text: "Pandas"
  end

  test "creating a Panda" do
    visit pandas_url
    click_on "New Panda"

    fill_in "City", with: @panda.city
    fill_in "Name", with: @panda.name
    click_on "Create Panda"

    assert_text "Panda was successfully created"
    click_on "Back"
  end

  test "updating a Panda" do
    visit pandas_url
    click_on "Edit", match: :first

    fill_in "City", with: @panda.city
    fill_in "Name", with: @panda.name
    click_on "Update Panda"

    assert_text "Panda was successfully updated"
    click_on "Back"
  end

  test "destroying a Panda" do
    visit pandas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Panda was successfully destroyed"
  end
end
