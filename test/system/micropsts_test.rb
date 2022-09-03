require "application_system_test_case"

class MicropstsTest < ApplicationSystemTestCase
  setup do
    @micropst = micropsts(:one)
  end

  test "visiting the index" do
    visit micropsts_url
    assert_selector "h1", text: "Micropsts"
  end

  test "should create micropst" do
    visit micropsts_url
    click_on "New micropst"

    fill_in "Content", with: @micropst.content
    fill_in "User", with: @micropst.user_id
    click_on "Create Micropst"

    assert_text "Micropst was successfully created"
    click_on "Back"
  end

  test "should update Micropst" do
    visit micropst_url(@micropst)
    click_on "Edit this micropst", match: :first

    fill_in "Content", with: @micropst.content
    fill_in "User", with: @micropst.user_id
    click_on "Update Micropst"

    assert_text "Micropst was successfully updated"
    click_on "Back"
  end

  test "should destroy Micropst" do
    visit micropst_url(@micropst)
    click_on "Destroy this micropst", match: :first

    assert_text "Micropst was successfully destroyed"
  end
end
