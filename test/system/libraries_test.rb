require "application_system_test_case"

class LibrariesTest < ApplicationSystemTestCase
  setup do
    @library = libraries(:one)
  end

  test "visiting the index" do
    visit libraries_url
    assert_selector "h1", text: "Libraries"
  end

  test "creating a Library" do
    visit libraries_url
    click_on "New Library"

    fill_in "Author", with: @library.author
    fill_in "Copies", with: @library.copies
    fill_in "Isbn", with: @library.isbn
    fill_in "Name", with: @library.name
    fill_in "Pages", with: @library.pages
    fill_in "Price", with: @library.price
    fill_in "Publisher", with: @library.publisher
    click_on "Add Book"

    assert_text "Library was successfully created"
    click_on "Back"
  end

  test "updating a Library" do
    visit libraries_url
    click_on "Edit", match: :first

    fill_in "Author", with: @library.author
    fill_in "Copies", with: @library.copies
    fill_in "Isbn", with: @library.isbn
    fill_in "Name", with: @library.name
    fill_in "Pages", with: @library.pages
    fill_in "Price", with: @library.price
    fill_in "Publisher", with: @library.publisher
    click_on "Update Library"

    assert_text "Library was successfully updated"
    click_on "Back"
  end

  test "destroying a Library" do
    visit libraries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Library was successfully destroyed"
  end
end
