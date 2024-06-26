require "application_system_test_case"

class TrainingListsTest < ApplicationSystemTestCase
  setup do
    @training_list = training_lists(:one)
  end

  test "visiting the index" do
    visit training_lists_url
    assert_selector "h1", text: "Training Lists"
  end

  test "creating a Training list" do
    visit training_lists_url
    click_on "New Training List"

    fill_in "Name", with: @training_list.name
    click_on "Create Training list"

    assert_text "Training list was successfully created"
    click_on "Back"
  end

  test "updating a Training list" do
    visit training_lists_url
    click_on "Edit", match: :first

    fill_in "Name", with: @training_list.name
    click_on "Update Training list"

    assert_text "Training list was successfully updated"
    click_on "Back"
  end

  test "destroying a Training list" do
    visit training_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Training list was successfully destroyed"
  end
end
