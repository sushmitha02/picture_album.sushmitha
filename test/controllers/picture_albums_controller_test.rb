require 'test_helper'

class PictureAlbumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picture_album = picture_albums(:one)
  end

  test "should get index" do
    get picture_albums_url
    assert_response :success
  end

  test "should get new" do
    get new_picture_album_url
    assert_response :success
  end

  test "should create picture_album" do
    assert_difference('PictureAlbum.count') do
      post picture_albums_url, params: { picture_album: { description: @picture_album.description, title: @picture_album.title } }
    end

    assert_redirected_to picture_album_url(PictureAlbum.last)
  end

  test "should show picture_album" do
    get picture_album_url(@picture_album)
    assert_response :success
  end

  test "should get edit" do
    get edit_picture_album_url(@picture_album)
    assert_response :success
  end

  test "should update picture_album" do
    patch picture_album_url(@picture_album), params: { picture_album: { description: @picture_album.description, title: @picture_album.title } }
    assert_redirected_to picture_album_url(@picture_album)
  end

  test "should destroy picture_album" do
    assert_difference('PictureAlbum.count', -1) do
      delete picture_album_url(@picture_album)
    end

    assert_redirected_to picture_albums_url
  end
end
