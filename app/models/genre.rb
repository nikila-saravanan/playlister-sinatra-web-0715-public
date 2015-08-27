class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs


  def to_slug
    "#{name.downcase.gsub(" ","-")}"
  end

end
