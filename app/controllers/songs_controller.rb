require 'rspotify'
class SongsController < ApplicationController
  def index
    if params["q"] != nil
      search_term = params["q"]
      RSpotify.authenticate(ENV["CLIENT_ID"], ENV["SECRET_ID"])

      artist = RSpotify::Artist.search(search_term)
      @artist = artist.first
    end
  end
end
