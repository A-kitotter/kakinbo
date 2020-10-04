require "application_system_test_case"

class PerformancesTest < ApplicationSystemTestCase
  setup do
    @performance = performances(:one)
  end

  test "visiting the index" do
    visit performances_url
    assert_selector "h1", text: "Performances"
  end

  test "creating a Performance" do
    visit performances_url
    click_on "New Performance"

    fill_in "Content", with: @performance.content_id
    fill_in "P comment", with: @performance.p_comment
    fill_in "P day", with: @performance.p_day
    fill_in "P money", with: @performance.p_money
    fill_in "P month", with: @performance.p_month
    fill_in "P year", with: @performance.p_year
    click_on "Create Performance"

    assert_text "Performance was successfully created"
    click_on "Back"
  end

  test "updating a Performance" do
    visit performances_url
    click_on "Edit", match: :first

    fill_in "Content", with: @performance.content_id
    fill_in "P comment", with: @performance.p_comment
    fill_in "P day", with: @performance.p_day
    fill_in "P money", with: @performance.p_money
    fill_in "P month", with: @performance.p_month
    fill_in "P year", with: @performance.p_year
    click_on "Update Performance"

    assert_text "Performance was successfully updated"
    click_on "Back"
  end

  test "destroying a Performance" do
    visit performances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Performance was successfully destroyed"
  end
end
