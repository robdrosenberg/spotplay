require 'rspotify'
class SongsController < ApplicationController
  def index
    if params["q"] != nil
      search_term = params["q"]
      RSpotify.authenticate(ENV["CLIENT_ID"], ENV["SECRET_ID"])

      artist = RSpotify::Artist.search(search_term)
      @artist = artist.first
      all_tracks = []
      @artist.albums.each do |album|
        album.tracks.each do |track|
          all_tracks << track
        end
      end
      @random_tracks = all_tracks.sample 15
      # binding.pry
    end
  end
end
