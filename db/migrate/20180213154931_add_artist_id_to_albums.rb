class AddArtistIdToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :artist_id, :interger
  end
end
