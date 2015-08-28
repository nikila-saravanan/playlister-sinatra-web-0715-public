require 'pry'
class Song < ActiveRecord::Base
  has_many :song_genres
  has_many :genres, through: :song_genres
  belongs_to :artist
  accepts_nested_attributes_for :artist #allows activerecord to get artist attributes through songs


  include Slugifiable

end
