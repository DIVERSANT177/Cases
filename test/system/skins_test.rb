require "application_system_test_case"

class SkinsTest < ApplicationSystemTestCase
  setup do
    @skin = skins(:one)
  end

  test "visiting the index" do
    visit skins_url
    assert_selector "h1", text: "Skins"
  end

  test "should create skin" do
    visit skins_url
    click_on "New skin"

    fill_in "Name", with: @skin.name
    fill_in "Price", with: @skin.price
    click_on "Create Skin"

    assert_text "Skin was successfully created"
    click_on "Back"
  end

  test "should update Skin" do
    visit skin_url(@skin)
    click_on "Edit this skin", match: :first

    fill_in "Name", with: @skin.name
    fill_in "Price", with: @skin.price
    click_on "Update Skin"

    assert_text "Skin was successfully updated"
    click_on "Back"
  end

  test "should destroy Skin" do
    visit skin_url(@skin)
    click_on "Destroy this skin", match: :first

    assert_text "Skin was successfully destroyed"
  end
end
