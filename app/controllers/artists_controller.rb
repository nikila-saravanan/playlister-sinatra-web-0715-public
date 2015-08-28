class ArtistsController < ApplicationController
  get '' do
    @artists = Artist.all
    erb :"artists/index"
  end
end
