class AddArtistIdToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :artist_id, :interger
  end
end
