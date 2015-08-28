class SongGenre < ActiveRecord::Base
  #when two things have a many-many relationship, you create a join table
  belongs_to :song
  belongs_to :genre

  include Slugifiable
  extend Slugifiable::ClassMethods
  
end
