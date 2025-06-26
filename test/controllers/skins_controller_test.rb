require "test_helper"

class SkinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skin = skins(:one)
  end

  test "should get index" do
    get skins_url
    assert_response :success
  end

  test "should get new" do
    get new_skin_url
    assert_response :success
  end

  test "should create skin" do
    assert_difference("Skin.count") do
      post skins_url, params: { skin: { name: @skin.name, price: @skin.price } }
    end

    assert_redirected_to skin_url(Skin.last)
  end

  test "should show skin" do
    get skin_url(@skin)
    assert_response :success
  end

  test "should get edit" do
    get edit_skin_url(@skin)
    assert_response :success
  end

  test "should update skin" do
    patch skin_url(@skin), params: { skin: { name: @skin.name, price: @skin.price } }
    assert_redirected_to skin_url(@skin)
  end

  test "should destroy skin" do
    assert_difference("Skin.count", -1) do
      delete skin_url(@skin)
    end

    assert_redirected_to skins_url
  end
end
