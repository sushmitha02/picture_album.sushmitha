class AddUserIdToPictureAlbum < ActiveRecord::Migration[5.2]
  def change
    add_column :picture_albums, :user_id, :integer
  end
end
