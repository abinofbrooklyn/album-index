Rails.application.routes.draw do

  root to: "album_search#index"

  resources :album_search

end
