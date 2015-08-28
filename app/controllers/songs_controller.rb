class SongsController < ApplicationController
  get '' do
    @songs = Song.all
    erb :"song/index"
  end
end
