Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "songs#index"
  get '/auth/spotify/callback', to: 'users#spotify'
end
