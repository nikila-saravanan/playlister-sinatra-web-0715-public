class CreateSongGenres < ActiveRecord::Migration
  def change
    create_table :song_genres do |t|
      t.integer :song_id
      t.integer :genre_id
      #can also write this as:
      #t.references :song, index: true
      #t.references :genre, index: true
    end
  end
end
