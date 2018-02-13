class AddAlbumIdToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :album_id, :interger
  end
end
