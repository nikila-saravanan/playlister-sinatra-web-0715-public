class GenresController < ApplicationController
  get '' do
    @genres = Genre.all
    erb :"genres/index"
  end
end
