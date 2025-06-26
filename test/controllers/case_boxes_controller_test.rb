require "test_helper"

class CaseBoxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @case_box = case_boxes(:one)
  end

  test "should get index" do
    get case_boxes_url
    assert_response :success
  end

  test "should get new" do
    get new_case_box_url
    assert_response :success
  end

  test "should create case_box" do
    assert_difference("CaseBox.count") do
      post case_boxes_url, params: { case_box: { name: @case_box.name, price: @case_box.price } }
    end

    assert_redirected_to case_box_url(CaseBox.last)
  end

  test "should show case_box" do
    get case_box_url(@case_box)
    assert_response :success
  end

  test "should get edit" do
    get edit_case_box_url(@case_box)
    assert_response :success
  end

  test "should update case_box" do
    patch case_box_url(@case_box), params: { case_box: { name: @case_box.name, price: @case_box.price } }
    assert_redirected_to case_box_url(@case_box)
  end

  test "should destroy case_box" do
    assert_difference("CaseBox.count", -1) do
      delete case_box_url(@case_box)
    end

    assert_redirected_to case_boxes_url
  end
end
