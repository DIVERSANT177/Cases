require "application_system_test_case"

class CaseBoxesTest < ApplicationSystemTestCase
  setup do
    @case_box = case_boxes(:one)
  end

  test "visiting the index" do
    visit case_boxes_url
    assert_selector "h1", text: "Case boxes"
  end

  test "should create case box" do
    visit case_boxes_url
    click_on "New case box"

    fill_in "Name", with: @case_box.name
    fill_in "Price", with: @case_box.price
    click_on "Create Case box"

    assert_text "Case box was successfully created"
    click_on "Back"
  end

  test "should update Case box" do
    visit case_box_url(@case_box)
    click_on "Edit this case box", match: :first

    fill_in "Name", with: @case_box.name
    fill_in "Price", with: @case_box.price
    click_on "Update Case box"

    assert_text "Case box was successfully updated"
    click_on "Back"
  end

  test "should destroy Case box" do
    visit case_box_url(@case_box)
    click_on "Destroy this case box", match: :first

    assert_text "Case box was successfully destroyed"
  end
end
