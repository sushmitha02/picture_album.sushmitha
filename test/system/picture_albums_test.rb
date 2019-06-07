require "application_system_test_case"

class PictureAlbumsTest < ApplicationSystemTestCase
  setup do
    @picture_album = picture_albums(:one)
  end

  test "visiting the index" do
    visit picture_albums_url
    assert_selector "h1", text: "Picture Albums"
  end

  test "creating a Picture album" do
    visit picture_albums_url
    click_on "New Picture Album"

    fill_in "Description", with: @picture_album.description
    fill_in "Title", with: @picture_album.title
    click_on "Create Picture album"

    assert_text "Picture album was successfully created"
    click_on "Back"
  end

  test "updating a Picture album" do
    visit picture_albums_url
    click_on "Edit", match: :first

    fill_in "Description", with: @picture_album.description
    fill_in "Title", with: @picture_album.title
    click_on "Update Picture album"

    assert_text "Picture album was successfully updated"
    click_on "Back"
  end

  test "destroying a Picture album" do
    visit picture_albums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Picture album was successfully destroyed"
  end
end
