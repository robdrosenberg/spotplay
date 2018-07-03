require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, ENV["CLIENT_ID"], ENV["SECRET_ID"], scope: 'playlist-modify-public user-library-modify playlist-modify-private user-modify-playback-state'
end