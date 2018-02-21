class AlbumSearchController < ApplicationController

  def index
    @artists = Artist.joins(:albums, :songs).pluck("artists.name as artist_name" , "albums.title as album_title", "songs.title as song_title")
  end

  def show
    @artist = Artist.find(params[:id])
    @album = Album.find(params[:id])
    @song = Song.find(params[:id])
  end
end
