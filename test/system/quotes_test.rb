require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  setup do
    @quote = quotes(:first)
  end

  test "Creating a new quote" do
    visit quotes_url
    assert_selector "h1", text: "Quotes"

    click_on "New quote"
    assert_selector "h1", text: "New quote"

    fill_in "Name", with: "Test quote"
    click_on "Create quote"

    assert_selector "h1", text: "Quotes"
    assert_text "Test quote"
  end

  test "Showing a quote" do
    visit quotes_url
    click_link @quote.name

    assert_selector "h1", text: @quote.name
  end

  test "Updating a quote" do
    visit quotes_url
    click_link "Edit", match: :first

    assert_selector "h1", text: "Edit quote"

    fill_in "Name", with: "Updated quote"
    click_on "Update quote"

    assert_selector "h1", text: "Quotes"
    assert_text "Updated quote"
  end
end
