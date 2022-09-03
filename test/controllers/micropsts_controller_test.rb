require "test_helper"

class MicropstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @micropst = micropsts(:one)
  end

  test "should get index" do
    get micropsts_url
    assert_response :success
  end

  test "should get new" do
    get new_micropst_url
    assert_response :success
  end

  test "should create micropst" do
    assert_difference("Micropst.count") do
      post micropsts_url, params: { micropst: { content: @micropst.content, user_id: @micropst.user_id } }
    end

    assert_redirected_to micropst_url(Micropst.last)
  end

  test "should show micropst" do
    get micropst_url(@micropst)
    assert_response :success
  end

  test "should get edit" do
    get edit_micropst_url(@micropst)
    assert_response :success
  end

  test "should update micropst" do
    patch micropst_url(@micropst), params: { micropst: { content: @micropst.content, user_id: @micropst.user_id } }
    assert_redirected_to micropst_url(@micropst)
  end

  test "should destroy micropst" do
    assert_difference("Micropst.count", -1) do
      delete micropst_url(@micropst)
    end

    assert_redirected_to micropsts_url
  end
end
